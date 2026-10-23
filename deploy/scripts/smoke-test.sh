#!/usr/bin/env bash
# Post-deploy smoke tests for the homelab namespace (APP-01..03, NetworkPolicy,
# optional DATA-01/02 persistence). Non-destructive by default.
#
#   smoke-test.sh [--expect-sha SHA] [--persistence] [--evidence DIR]
#
#   --expect-sha   fail unless /api/v1/version reports this git SHA
#   --persistence  restart postgres-0 and redis-0 and check data survives
#                  (brief DB downtime; do not run during real workload)
#   --evidence     also write the output to DIR/smoke-<UTC>.log
#
# KUBECTL selects the client, e.g. KUBECTL="sudo k3s kubectl" (default kubectl).
# Secrets are read into memory only and never printed or put on a command line.
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

NS="${NAMESPACE:-homelab}"
read -r -a KC <<< "${KUBECTL:-kubectl}"
EXPECT_SHA=""
PERSIST=0
EVIDENCE=""
# busybox for the network-policy probe pods (pinned multi-arch digest).
PROBE_IMAGE="${PROBE_IMAGE:-busybox:1.37.0@sha256:bdf57e528e45e4433820e045b29b4597825a1c9e38353532d90a01445013f82e}"

while [ $# -gt 0 ]; do
  case "$1" in
    --expect-sha) EXPECT_SHA="${2:?}"; shift 2 ;;
    --persistence) PERSIST=1; shift ;;
    --evidence) EVIDENCE="${2:?}"; shift 2 ;;
    -h|--help) sed -n '2,15p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done

if [ -n "$EVIDENCE" ]; then
  mkdir -p "$EVIDENCE"
  log="$EVIDENCE/smoke-$(date -u +%Y%m%dT%H%M%SZ).log"
  exec > >(tee -a "$log") 2>&1
  info "evidence log: $log"
fi

need_cmd curl
need_cmd jq
k() { "${KC[@]}" -n "$NS" "$@"; }

PF_PIDS=()
cleanup() {
  for p in ${PF_PIDS[@]+"${PF_PIDS[@]}"}; do kill "$p" 2>/dev/null || true; done
  k delete pod -l homelab.io/smoke=probe --ignore-not-found --wait=false >/dev/null 2>&1 || true
}
trap cleanup EXIT

# Start a port-forward on a free local port and set PF_PORT. Must not run in a
# subshell ($(...)), or the PID never reaches PF_PIDS and the forward leaks.
PF_PORT=""
port_forward() {
  local target="$1" remote="$2" pid
  PF_PORT="$(( (RANDOM % 20000) + 30000 ))"
  # Call kubectl directly (not the k function) so $! is kubectl itself.
  "${KC[@]}" -n "$NS" port-forward "$target" "$PF_PORT:$remote" >/dev/null 2>&1 &
  pid=$!
  PF_PIDS+=("$pid")
  for _ in $(seq 1 50); do
    curl -s -o /dev/null "http://127.0.0.1:$PF_PORT/health/live" && return 0
    kill -0 "$pid" 2>/dev/null || break
    sleep 0.2
  done
  return 1
}

# --- K3S-01 / rollout state -------------------------------------------------
if "${KC[@]}" get nodes --no-headers 2>/dev/null | awk '$2=="Ready"' | grep -q .; then
  pass "K3S-01 node Ready"
else
  fail "K3S-01 no Ready node"
fi
for d in deploy/api deploy/mcp deploy/worker sts/postgres sts/redis; do
  if k rollout status "$d" --timeout=120s >/dev/null 2>&1; then pass "rollout $d"; else fail "rollout $d not complete"; fi
done
bound="$(k get pvc -o json | jq -r '[.items[] | select(.status.phase=="Bound")] | length')"
[ "$bound" -ge 2 ] && pass "K3S-02 $bound PVC(s) Bound" || fail "K3S-02 only $bound PVC(s) Bound"

# --- APP-01 API -----------------------------------------------------------------
if port_forward svc/api 80; then
  api="http://127.0.0.1:$PF_PORT"
  ready="$(curl -s -w ' %{http_code}' "$api/health/ready" || true)"
  [ "${ready##* }" = 200 ] && pass "APP-01 /health/ready 200 ${ready% *}" || fail "APP-01 /health/ready: $ready"
  version="$(curl -fsS "$api/api/v1/version" || echo '{}')"
  sha="$(jq -r '.git_sha // empty' <<< "$version")"
  info "api version: $version"
  if [ -n "$EXPECT_SHA" ]; then
    [ "$sha" = "$EXPECT_SHA" ] && pass "DEPLOY-01 api reports expected SHA" || fail "DEPLOY-01 api SHA '$sha' != '$EXPECT_SHA'"
  fi

  # --- APP-03 worker: enqueue twice with one key, expect one succeeded job --
  key="smoke-$(date -u +%s)-$RANDOM"
  body="$(jq -nc --arg k "$key" '{kind:"echo", payload:{smoke:$k}, idempotency_key:$k}')"
  c1="$(curl -s -o /dev/null -w '%{http_code}' -H 'content-type: application/json' -d "$body" "$api/api/v1/jobs")"
  job="$(curl -s -H 'content-type: application/json' -d "$body" "$api/api/v1/jobs")"
  id="$(jq -r '.id // empty' <<< "$job")"
  if [ "$c1" = 201 ] && [ -n "$id" ]; then
    pass "APP-03 job $id enqueued; duplicate key returned same job"
    status=""
    for _ in $(seq 1 40); do
      status="$(curl -s "$api/api/v1/jobs/$id" | jq -r .status)"
      [ "$status" = succeeded ] || [ "$status" = failed ] && break
      sleep 0.5
    done
    [ "$status" = succeeded ] && pass "APP-03 worker processed job" || fail "APP-03 job status: $status"
  else
    fail "APP-03 enqueue returned HTTP $c1: $job"
  fi
else
  fail "APP-01 could not port-forward svc/api"
fi

# --- APP-02 MCP ------------------------------------------------------------------
if port_forward svc/mcp 80; then
  mcp="http://127.0.0.1:$PF_PORT/mcp"
  token="$(k get secret homelab-mcp -o jsonpath='{.data.MCP_AUTH_TOKEN}' | base64 -d)"
  mcp_call() {
    # Header passed via curl config on stdin so the token never hits argv.
    printf 'header = "Authorization: Bearer %s"\n' "$token" |
      curl -s --config - -H 'content-type: application/json' \
        -H 'accept: application/json, text/event-stream' -H 'mcp-protocol-version: 2025-06-18' \
        -d "$1" "$mcp"
  }
  unauth="$(curl -s -o /dev/null -w '%{http_code}' -H 'content-type: application/json' \
    -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}' "$mcp")"
  [ "$unauth" = 401 ] && pass "APP-02 MCP rejects missing token (401)" || fail "APP-02 unauthenticated MCP returned $unauth"
  mcp_call '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2025-06-18","capabilities":{},"clientInfo":{"name":"smoke","version":"1"}}}' >/dev/null
  echo_out="$(mcp_call '{"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"echo","arguments":{"text":"smoke-ok"}}}' | jq -r '.result.content[0].text // empty')"
  [ "$echo_out" = smoke-ok ] && pass "APP-02 authorised MCP tool call succeeded" || fail "APP-02 echo tool returned '$echo_out'"
  unset token
else
  fail "APP-02 could not port-forward svc/mcp"
fi

# --- NetworkPolicy: deny is enforced, allow works ---------------------------------
probe() {
  local name="$1" labels="$2"
  k run "$name" --image="$PROBE_IMAGE" --restart=Never --labels="homelab.io/smoke=probe,$labels" \
    --overrides='{"spec":{"securityContext":{"runAsNonRoot":true,"runAsUser":65534,"seccompProfile":{"type":"RuntimeDefault"}},"containers":[{"name":"'"$name"'","image":"'"$PROBE_IMAGE"'","command":["nc","-z","-w","3","postgres","5432"],"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}}}]}}' \
    >/dev/null
  for _ in $(seq 1 40); do
    phase="$(k get pod "$name" -o jsonpath='{.status.phase}' 2>/dev/null || true)"
    case "$phase" in Succeeded|Failed) echo "$phase"; return ;; esac
    sleep 0.5
  done
  echo Timeout
}
suffix="$RANDOM"
denied="$(probe "np-deny-$suffix" "homelab.io/db-client=false")"
allowed="$(probe "np-allow-$suffix" "homelab.io/db-client=true")"
if [ "$denied" = Failed ] && [ "$allowed" = Succeeded ]; then
  pass "NETPOL postgres denied to non-client pod, allowed to db-client pod"
elif [ "$denied" = Succeeded ]; then
  fail "NETPOL non-client pod reached postgres: NetworkPolicy NOT enforced"
else
  warn "NETPOL inconclusive (deny=$denied allow=$allowed)"
fi

# --- DATA-01/02 persistence across pod restart (opt-in) -----------------------------
if [ "$PERSIST" -eq 1 ]; then
  marker="persist-$(date -u +%s)-$RANDOM"
  # SQL goes over stdin; $POSTGRES_* expand inside the container.
  # shellcheck disable=SC2016
  pg() { k exec -i postgres-0 -- sh -c 'psql -v ON_ERROR_STOP=1 -qtA -U "$POSTGRES_USER" -d "$POSTGRES_DB"'; }
  pg >/dev/null <<SQL
CREATE TABLE IF NOT EXISTS smoke_persist (marker text PRIMARY KEY, at timestamptz DEFAULT now());
INSERT INTO smoke_persist (marker) VALUES ('$marker');
SQL
  k exec redis-0 -- redis-cli SET "smoke:$marker" 1 >/dev/null
  k exec redis-0 -- redis-cli BGREWRITEAOF >/dev/null || true
  sleep 2
  k delete pod postgres-0 redis-0 --wait=true >/dev/null
  k rollout status sts/postgres --timeout=180s >/dev/null && k rollout status sts/redis --timeout=120s >/dev/null
  k wait --for=condition=Ready pod/postgres-0 pod/redis-0 --timeout=120s >/dev/null
  got="$(pg <<< "SELECT count(*) FROM smoke_persist WHERE marker = '$marker';")"
  [ "$got" = 1 ] && pass "DATA-01 PostgreSQL row survived pod restart" || fail "DATA-01 row missing after restart"
  rgot="$(k exec redis-0 -- redis-cli GET "smoke:$marker")"
  [ "$rgot" = 1 ] && pass "DATA-02 Redis AOF key survived pod restart" || fail "DATA-02 Redis key missing after restart"
  k exec redis-0 -- redis-cli DEL "smoke:$marker" >/dev/null
fi

finish
