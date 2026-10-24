#!/usr/bin/env bash
# Step 4 — Rate / resilience: a controlled, low-rate burst to a cheap health
# endpoint must not knock the api over. This is NOT a DoS: default 30 serial
# requests. Pass a count as $1 to adjust (keep it small and authorized).
set -Eeuo pipefail
# shellcheck source=lab/kali/scripts/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

N="${1:-30}"
[ "$N" -le 200 ] || { echo "refusing N=$N (>200); keep the burst small and authorized" >&2; exit 2; }
BASE="http://$TARGET:$API_PORT"
scope_banner
hr "rate burst: $N serial requests to $BASE/health/ready"

ok=0
for _ in $(seq 1 "$N"); do
  [ "$(http_code "$BASE/health/ready")" = 200 ] && ok=$((ok+1))
done

if [ "$ok" -eq "$N" ]; then
  pass "$ok/$N = 200 (api stayed healthy)"
else
  warn "$ok/$N = 200 ($((N-ok)) non-200; could be rate limiting or saturation)"
fi

summary "rate"
