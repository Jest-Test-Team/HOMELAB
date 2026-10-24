#!/usr/bin/env bash
# Step 2 — MCP authentication & DNS-rebinding guard.
#   * no bearer token            -> 401
#   * bad bearer token           -> 401
#   * valid token + forged Host  -> 403  (Host allow-list / rebinding guard)
#   * valid token + correct Host -> not 401 (auth passed; 406 is fine)
# The valid-token cases run only when MCP_TOKEN is set in the environment.
set -Eeuo pipefail
# shellcheck source=lab/kali/scripts/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

URL="http://$TARGET:$MCP_PORT/mcp"
scope_banner
hr "MCP auth against $URL"

code="$(http_code "$URL" -X POST)"
[ "$code" = 401 ] && pass "no token -> $code" || fail "no token -> $code (expected 401)"

code="$(http_code "$URL" -X POST -H 'Authorization: Bearer deadbeefdeadbeef')"
[ "$code" = 401 ] && pass "bad token -> $code" || fail "bad token -> $code (expected 401)"

if [ -n "${MCP_TOKEN:-}" ]; then
  code="$(http_code "$URL" -X POST -H "Authorization: Bearer $MCP_TOKEN" \
          -H 'Host: evil.example' -H 'Content-Type: application/json' --data '{}')"
  [ "$code" = 403 ] && pass "valid token + forged Host -> $code (rebinding guard)" \
                    || fail "valid token + forged Host -> $code (expected 403)"

  code="$(http_code "$URL" -X POST -H "Authorization: Bearer $MCP_TOKEN" \
          -H "Host: $MCP_HOST" -H 'Content-Type: application/json' --data '{}')"
  if [ "$code" != 401 ] && [ "$code" != 000 ]; then
    pass "valid token + correct Host -> $code (auth passed; not 401)"
  else
    fail "valid token + correct Host -> $code (expected auth to pass)"
  fi
else
  info "MCP_TOKEN not set; skipping valid-token cases."
  info "get it on the node: sudo k3s kubectl -n homelab get secret mcp-auth -o jsonpath='{.data.token}' | base64 -d"
fi

summary "mcp"
