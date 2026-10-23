#!/usr/bin/env bash
# P3 (guest): generate app secrets and load them into the homelab namespace.
#
#   22-guest-secrets.sh          # report which secrets exist
#   22-guest-secrets.sh --yes    # create missing source files, apply Secrets
#
# Source files: /etc/homelab/secrets/{postgres,redis,app,mcp}.env (root, 0600).
# Values are generated as root and never printed. Existing files are never
# overwritten, so a rerun cannot rotate a database password. If ONLY some files
# exist the script stops, because new ones would not match the old passwords.
# Private GHCR only: ~/.config/homelab/ghcr.env (GHCR_USER, GHCR_TOKEN) is
# turned into the ghcr-pull Secret when present.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,12p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest
need_cmd kubectl; need_cmd jq
D=/etc/homelab/secrets
NAMES=(postgres redis app mcp)
REPO=/opt/homelab/repo; [ -d "$REPO" ] || REPO="$REPO_ROOT"

present=0
for s in "${NAMES[@]}"; do sudo test -f "$D/$s.env" && present=$((present + 1)); done
info "$present of ${#NAMES[@]} secret source files exist in $D"

if [ "$present" -eq "${#NAMES[@]}" ]; then
  pass "all secret source files exist"
elif [ "$present" -gt 0 ]; then
  die "only some files exist in $D; restore the missing ones from backup instead of regenerating"
elif confirm "generate ${NAMES[*]} env files in $D"; then
  sudo install -d -m 700 -o root -g root "$D"
  sudo sh -c 'set -eC; umask 077; cd /etc/homelab/secrets
    PG=$(openssl rand -hex 24); RD=$(openssl rand -hex 24); MCP=$(openssl rand -hex 24)
    printf "POSTGRES_USER=homelab\nPOSTGRES_PASSWORD=%s\nPOSTGRES_DB=homelab\n" "$PG" > postgres.env
    printf "REDIS_PASSWORD=%s\n" "$RD" > redis.env
    printf "DATABASE_URL=postgres://homelab:%s@postgres.homelab.svc:5432/homelab\nREDIS_URL=redis://:%s@redis.homelab.svc:6379/0\n" "$PG" "$RD" > app.env
    printf "MCP_AUTH_TOKEN=%s\n" "$MCP" > mcp.env'
  pass "generated secret source files"
else
  finish; exit
fi

confirm "apply namespace and homelab-{postgres,redis,app,mcp} Secrets" || { finish; exit; }
kubectl apply -f "$REPO/deploy/k8s/base/namespace.yaml"
for s in "${NAMES[@]}"; do
  sudo cat "$D/$s.env" |
    kubectl -n homelab create secret generic "homelab-$s" --from-env-file=/dev/stdin --dry-run=client -o yaml |
    kubectl apply -f -
done
pass "app Secrets applied"

if [ -f "$HOME/.config/homelab/ghcr.env" ]; then
  # shellcheck source=/dev/null
  ( set -a; . "$HOME/.config/homelab/ghcr.env"; set +a
    jq -n '{auths: {"ghcr.io": {auth: ("\(env.GHCR_USER):\(env.GHCR_TOKEN)" | @base64)}}}' ) |
    kubectl -n homelab create secret generic ghcr-pull --type=kubernetes.io/dockerconfigjson \
      --from-file=.dockerconfigjson=/dev/stdin --dry-run=client -o yaml | kubectl apply -f -
  pass "ghcr-pull Secret applied"
else
  info "no ~/.config/homelab/ghcr.env: skipping ghcr-pull (not needed while the packages are public)"
fi
show kubectl -n homelab get secrets
finish
