#!/usr/bin/env bash
# Pull-only, SHA-locked deployment. Run on the VM as <vm-user>, normally over SSH:
#
#   deploy-from-github.sh [--migrate] [--wait-images SECS] [--dry-run] <FULL_40_HEX_SHA>
#   deploy-from-github.sh --rollback          # redeploy the previous successful SHA
#
# Flow: lock -> preflight -> fetch allowlisted remote/branch -> verify the SHA is
# on that branch -> detached release worktree (the main checkout and its local
# changes are untouched) -> resolve image digests for sha-<SHA> -> render
# manifests pinned by digest -> [backup (or, first deploy, data tier) + migrate
# Job] -> apply -> rollout ->
# smoke test -> record. On rollout/smoke failure: `kubectl rollout undo` of the
# app Deployments. PVCs and databases are never deleted.
#
# Code from the fetched commit is never executed: this script, smoke-test.sh and
# backup-databases.sh run from the installed checkout; the release only supplies
# Kubernetes manifests (data).
#
# Config: /etc/homelab/deploy.env (override with HOMELAB_DEPLOY_ENV). See
# docs/runbook.md for keys. Registry credentials (private GHCR only):
# ~/.config/homelab/ghcr.env (0600) with GHCR_USER and GHCR_TOKEN (read-only PAT).
set -Eeuo pipefail
umask 027

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

CONFIG="${HOMELAB_DEPLOY_ENV:-/etc/homelab/deploy.env}"
if [ -f "$CONFIG" ]; then
  # shellcheck source=/dev/null
  . "$CONFIG"
fi

: "${REPO_DIR:=/opt/homelab/repo}"
: "${RELEASES_DIR:=/opt/homelab/releases}"
: "${STATE_DIR:=/opt/homelab/state}"
: "${ALLOWED_REMOTE:?set ALLOWED_REMOTE in $CONFIG, e.g. git@github-homelab:OWNER/REPO.git}"
: "${DEPLOY_BRANCH:=main}"
: "${REGISTRY:=ghcr.io}"
: "${REGISTRY_API:=https://$REGISTRY}"
: "${REGISTRY_OWNER:?set REGISTRY_OWNER (lowercase GitHub owner) in $CONFIG}"
: "${GHCR_CREDENTIALS:=$HOME/.config/homelab/ghcr.env}"
: "${NAMESPACE:=homelab}"
: "${MIN_FREE_GIB:=5}"
: "${ROLLOUT_TIMEOUT:=180s}"
: "${KUBECTL:=kubectl}"
export KUBECTL NAMESPACE
read -r -a KC <<< "$KUBECTL"
SERVICES=(api mcp worker dashboard)
DEPLOYMENTS=(deploy/api deploy/mcp deploy/worker deploy/dashboard)
REQUIRED_SECRETS=(homelab-app homelab-postgres homelab-redis homelab-mcp)
PLACEHOLDER_IMAGE_PREFIX="ghcr.io/OWNER/homelab-"

MIGRATE=0
DRY_RUN=0
ROLLBACK=0
WAIT_IMAGES=0
SHA=""
while [ $# -gt 0 ]; do
  case "$1" in
    --migrate) MIGRATE=1; shift ;;
    --dry-run) DRY_RUN=1; shift ;;
    --rollback) ROLLBACK=1; shift ;;
    --wait-images) WAIT_IMAGES="${2:?}"; shift 2 ;;
    -h|--help) sed -n '2,21p' "$0"; exit 0 ;;
    -*) die "unknown option: $1" ;;
    *) [ -z "$SHA" ] || die "only one SHA may be given"; SHA="$1"; shift ;;
  esac
done

need_cmd git
need_cmd curl
need_cmd jq
need_cmd flock
k() { "${KC[@]}" -n "$NAMESPACE" "$@"; }

mkdir -p "$STATE_DIR" "$RELEASES_DIR"
LOG="$STATE_DIR/deployments.jsonl"

# Previous successful SHA from the deployment log (for --rollback / records).
last_success() {
  local skip="${1:-0}" shas
  [ -f "$LOG" ] || return 0
  shas="$(jq -r 'select(.result == "success") | .sha' "$LOG")"
  [ "$(grep -c . <<< "$shas")" -gt "$skip" ] || return 0
  tail -n "$((skip + 1))" <<< "$shas" | head -n 1
}

if [ "$ROLLBACK" -eq 1 ]; then
  [ -z "$SHA" ] || die "--rollback takes no SHA"
  SHA="$(last_success 1)"
  [ -n "$SHA" ] || die "no previous successful deployment in $LOG"
  info "rollback target: $SHA (previous successful release)"
fi

[[ "$SHA" =~ ^[0-9a-f]{40}$ ]] || die "a full 40-character lowercase hex commit SHA is required"
SHORT="${SHA:0:12}"

# --- 1. serialize deploys ---------------------------------------------------------
exec 9> "$STATE_DIR/deploy.lock"
flock -n 9 || die "another deployment is running (lock $STATE_DIR/deploy.lock)"

START="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
PREV_SHA="$(last_success 0)"
IMAGES_JSON='{}'
RESULT="failed"
STAGE="preflight"
record() {
  local line
  line="$(jq -nc --arg start "$START" --arg end "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
    --arg sha "$SHA" --arg prev "${PREV_SHA:-}" --arg result "$RESULT" --arg stage "$STAGE" \
    --argjson migrate "$MIGRATE" --argjson dry "$DRY_RUN" --argjson images "$IMAGES_JSON" \
    --arg user "$(id -un)" \
    '{start:$start, end:$end, sha:$sha, previous_sha:$prev, result:$result, stage:$stage,
      migrate:($migrate==1), dry_run:($dry==1), images:$images, user:$user}')"
  printf '%s\n' "$line" >> "$LOG"
  info "recorded: $line"
}
on_exit() {
  local rc=$?
  if [ "$RESULT" != success ] && [ "$RESULT" != dry-run ]; then
    fail "deployment of $SHA failed at stage '$STAGE' (exit $rc)"
  fi
  record
}
trap on_exit EXIT

# --- 2. preflight -------------------------------------------------------------------
free_gib="$(df -Pk "$STATE_DIR" | awk 'NR==2 {print int($4/1024/1024)}')"
[ "$free_gib" -ge "$MIN_FREE_GIB" ] || die "only ${free_gib} GiB free (< $MIN_FREE_GIB)"
"${KC[@]}" get nodes --no-headers | awk '$2=="Ready"' | grep -q . || die "no Ready Kubernetes node"
for s in "${REQUIRED_SECRETS[@]}"; do
  k get secret "$s" >/dev/null 2>&1 || die "required secret $NAMESPACE/$s is missing (docs/runbook.md: Secrets)"
done
curl -s -o /dev/null --max-time 10 "$REGISTRY_API/v2/" || die "registry $REGISTRY_API unreachable"

cd "$REPO_DIR"
origin="$(git remote get-url origin)"
[ "$origin" = "$ALLOWED_REMOTE" ] || die "origin '$origin' is not the allowlisted remote '$ALLOWED_REMOTE'"
pass "preflight: ${free_gib} GiB free, node Ready, secrets present, registry reachable, origin allowlisted"

# --- 3. fetch and verify the commit is on the protected branch ------------------------
STAGE="fetch"
git fetch --quiet --no-tags origin "+refs/heads/$DEPLOY_BRANCH:refs/remotes/origin/$DEPLOY_BRANCH"
git cat-file -e "$SHA^{commit}" 2>/dev/null || die "commit $SHA not found after fetching $DEPLOY_BRANCH"
git merge-base --is-ancestor "$SHA" "origin/$DEPLOY_BRANCH" \
  || die "commit $SHA is not reachable from origin/$DEPLOY_BRANCH; refusing"
pass "commit $SHORT is on origin/$DEPLOY_BRANCH"

# --- 4. release worktree (never touches the main checkout) ------------------------------
STAGE="worktree"
WT="$RELEASES_DIR/$SHA"
if [ -d "$WT" ]; then
  [ "$(git -C "$WT" rev-parse HEAD)" = "$SHA" ] || die "$WT exists but is not at $SHA"
  [ -z "$(git -C "$WT" status --porcelain --untracked-files=no)" ] || die "release worktree $WT is dirty"
else
  git worktree add --quiet --detach "$WT" "$SHA"
fi
pass "release worktree $WT"

# --- 5. resolve image digests for sha-<SHA> ------------------------------------------------
STAGE="images"
registry_token() {
  local repo="$1" cfg
  cfg=""
  if [ -r "$GHCR_CREDENTIALS" ]; then
    # shellcheck source=/dev/null
    cfg="$(. "$GHCR_CREDENTIALS"; printf 'user = "%s:%s"\n' "${GHCR_USER:?}" "${GHCR_TOKEN:?}")"
  fi
  # Credentials go through curl's stdin config, never argv.
  printf '%s' "$cfg" | curl -s --config - --max-time 10 \
    "$REGISTRY_API/token?scope=repository:$repo:pull&service=$REGISTRY" | jq -r '.token // empty'
}
resolve_digest() {
  local repo="$1" tag="$2" token hdr
  token="$(registry_token "$repo" 2>/dev/null || true)"
  hdr=""
  [ -n "$token" ] && hdr="header = \"Authorization: Bearer $token\""
  printf '%s\n' "$hdr" | curl -s --config - --max-time 10 -I \
    -H 'Accept: application/vnd.oci.image.index.v1+json, application/vnd.docker.distribution.manifest.list.v2+json, application/vnd.oci.image.manifest.v1+json, application/vnd.docker.distribution.manifest.v2+json' \
    "$REGISTRY_API/v2/$repo/manifests/$tag" |
    tr -d '\r' | awk -F': ' 'tolower($1)=="docker-content-digest" {print $2}'
}
deadline=$(( $(date +%s) + WAIT_IMAGES ))
declare -a DIGESTS=()
for svc in "${SERVICES[@]}"; do
  repo="$REGISTRY_OWNER/homelab-$svc"
  digest=""
  while :; do
    digest="$(resolve_digest "$repo" "sha-$SHA")"
    [[ "$digest" =~ ^sha256:[0-9a-f]{64}$ ]] && break
    [ "$(date +%s)" -lt "$deadline" ] || die "image $REGISTRY/$repo:sha-$SHA not found (is CI finished? private package without $GHCR_CREDENTIALS?)"
    info "waiting for $REGISTRY/$repo:sha-$SHA ..."
    sleep 15
  done
  DIGESTS+=("$digest")
  IMAGES_JSON="$(jq -c --arg s "$svc" --arg i "$REGISTRY/$repo@$digest" '. + {($s): $i}' <<< "$IMAGES_JSON")"
  pass "image $svc -> $REGISTRY/$repo@$digest"
done

# --- 6. render manifests pinned by digest -----------------------------------------------------
STAGE="render"
REL="$WT/deploy/k8s/release"
mkdir -p "$REL"
{
  echo "# Generated by deploy-from-github.sh for $SHA at $START. Do not edit."
  echo "apiVersion: kustomize.config.k8s.io/v1beta1"
  echo "kind: Kustomization"
  echo "resources:"
  echo "  - ../overlays/homelab"
  echo "images:"
  for i in "${!SERVICES[@]}"; do
    svc="${SERVICES[$i]}"
    echo "  - name: ${PLACEHOLDER_IMAGE_PREFIX}$svc"
    echo "    newName: $REGISTRY/$REGISTRY_OWNER/homelab-$svc"
    echo "    digest: ${DIGESTS[$i]}"
  done
} > "$REL/kustomization.yaml"
RENDERED="$STATE_DIR/rendered-$SHA.yaml"
"${KC[@]}" kustomize "$REL" > "$RENDERED"
if grep -nE "image: .*homelab-(api|mcp|worker|dashboard)" "$RENDERED" | grep -v '@sha256:'; then
  die "rendered manifest has a homelab image without a digest"
fi
grep -q "$PLACEHOLDER_IMAGE_PREFIX" "$RENDERED" && die "placeholder image left in rendered manifest"
pass "rendered $(grep -c '^kind:' "$RENDERED") objects to $RENDERED"

if [ "$DRY_RUN" -eq 1 ]; then
  STAGE="dry-run"
  "${KC[@]}" apply --dry-run=server -f "$RENDERED" >/dev/null && pass "server-side dry run accepted"
  RESULT="dry-run"
  exit 0
fi

# --- 7. optional explicit migration (after backup) ----------------------------------------------
if [ "$MIGRATE" -eq 1 ]; then
  if k get statefulset postgres >/dev/null 2>&1; then
    STAGE="backup"
    # 9>&- : children must not inherit (and outlive us holding) the deploy lock.
    "$SCRIPT_DIR/backup-databases.sh" 9>&-
  else
    # First deploy: there is no database to back up, and the migrate Job needs
    # PostgreSQL, the ServiceAccount and the NetworkPolicy to exist. Apply
    # everything except the app workloads (`notin` also matches unlabelled
    # objects), then wait for the databases.
    STAGE="data-tier"
    info "first deploy: no postgres StatefulSet yet, nothing to back up; starting the data tier"
    "${KC[@]}" apply -f "$RENDERED" -l 'app.kubernetes.io/name notin (api,mcp,worker)' >/dev/null
    for sts in postgres redis; do
      k rollout status "statefulset/$sts" --timeout="$ROLLOUT_TIMEOUT" >/dev/null
    done
    pass "data tier ready (postgres, redis)"
  fi
  STAGE="migrate"
  api_image="$(jq -r .api <<< "$IMAGES_JSON")"
  job="migrate-$SHORT"
  k delete job "$job" --ignore-not-found >/dev/null
  sed -e "s#IMAGE#$api_image#" -e "s#RELEASE_SHORT#$SHORT#" -e "s#RELEASE_SHA#$SHA#" \
    "$WT/deploy/k8s/jobs/migrate-job.yaml" | "${KC[@]}" apply -f - >/dev/null
  if ! k wait --for=condition=complete "job/$job" --timeout=300s >/dev/null; then
    k logs "job/$job" --tail=50 >&2 || true
    die "migration job failed; application NOT rolled out. Restore from the backup only after review"
  fi
  pass "migrations applied by job/$job"
fi

# --- 8. apply and roll out ------------------------------------------------------------------------
STAGE="apply"
# Plain apply (no --prune): objects are created/updated, never deleted.
"${KC[@]}" apply -f "$RENDERED" >/dev/null
pass "applied manifests"

# Prefer re-applying the previous successful release's rendered, digest-pinned
# manifest: `rollout undo` would also flip Deployments this release did not
# change to their *older* ReplicaSet. Undo is only the first-deploy fallback.
rollback() {
  local d prev="$STATE_DIR/rendered-${PREV_SHA:-none}.yaml"
  if [ -n "${PREV_SHA:-}" ] && [ -f "$prev" ]; then
    warn "restoring previous release $PREV_SHA from $prev (PVCs and data untouched)"
    "${KC[@]}" apply -f "$prev" >/dev/null
  else
    warn "no previous rendered release; using kubectl rollout undo (PVCs and data untouched)"
    for d in "${DEPLOYMENTS[@]}"; do
      k rollout undo "$d" >/dev/null 2>&1 || warn "no previous revision for $d"
    done
  fi
  for d in "${DEPLOYMENTS[@]}"; do
    k rollout status "$d" --timeout="$ROLLOUT_TIMEOUT" >/dev/null 2>&1 || warn "$d did not settle after undo"
  done
}

STAGE="rollout"
for d in deploy/api deploy/mcp deploy/worker deploy/dashboard sts/postgres sts/redis; do
  if ! k rollout status "$d" --timeout="$ROLLOUT_TIMEOUT" >/dev/null; then
    k describe "$d" | tail -20 >&2 || true
    rollback
    RESULT="failed-rolled-back"
    die "rollout of $d did not complete"
  fi
done
pass "rollouts complete"

# Confirm running pods use the resolved digests.
STAGE="verify"
for i in "${!SERVICES[@]}"; do
  svc="${SERVICES[$i]}"
  ids="$(k get pods -l "app.kubernetes.io/name=$svc" -o jsonpath='{range .items[*]}{.status.containerStatuses[0].imageID}{"\n"}{end}')"
  grep -q "${DIGESTS[$i]}" <<< "$ids" || { rollback; RESULT="failed-rolled-back"; die "pods for $svc are not running ${DIGESTS[$i]}"; }
done
pass "running pods match resolved digests"

STAGE="smoke"
if ! "$SCRIPT_DIR/smoke-test.sh" --expect-sha "$SHA" 9>&-; then
  rollback
  RESULT="failed-rolled-back"
  die "smoke test failed"
fi

STAGE="done"
RESULT="success"
printf '%s\n' "$SHA" > "$STATE_DIR/current-sha"
pass "deployed $SHA (previous: ${PREV_SHA:-none})"
