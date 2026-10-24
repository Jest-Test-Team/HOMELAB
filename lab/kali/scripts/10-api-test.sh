#!/usr/bin/env bash
# Step 1 — API surface: the api is reachable and healthy on its intended port,
# and does not leak server internals. Optional OWASP ZAP baseline if installed.
set -Eeuo pipefail
# shellcheck source=lab/kali/scripts/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

BASE="http://$TARGET:$API_PORT"
scope_banner
hr "API checks against $BASE"

code="$(http_code "$BASE/api/v1/version")"
[ "$code" = 200 ] && pass "GET /api/v1/version -> $code" || fail "GET /api/v1/version -> $code (expected 200)"

code="$(http_code "$BASE/health/ready")"
[ "$code" = 200 ] && pass "GET /health/ready -> $code" || warn "GET /health/ready -> $code"

# Unknown route should 404, not 5xx (no stack traces / info leak).
code="$(http_code "$BASE/does-not-exist-$RANDOM")"
case "$code" in
  404|400) pass "unknown route -> $code (no server error)";;
  5*) fail "unknown route -> $code (server error leaks internals)";;
  *) warn "unknown route -> $code";;
esac

# Security headers (best-effort).
hr "response headers"
curl -s -D - -o /dev/null --max-time 6 "$BASE/api/v1/version" 2>/dev/null \
  | grep -iE '^(server|x-powered-by|content-type|strict-transport|x-content-type-options):' \
  | sed 's/^/  /' || info "no headers captured"

# Optional ZAP baseline (Docker). Non-blocking; informational.
if [ "${RUN_ZAP:-0}" = 1 ] && command -v docker >/dev/null 2>&1; then
  hr "OWASP ZAP baseline (informational)"
  docker run --rm -t ghcr.io/zaproxy/zaproxy:stable zap-baseline.py -t "$BASE" -I -m 1 \
    | tail -n 25 | sed 's/^/  /' || warn "ZAP baseline exited non-zero (expected for findings)"
else
  info "ZAP skipped (set RUN_ZAP=1 and install Docker to enable)"
fi

summary "api"
