#!/usr/bin/env bash
# Phase-1: bounded, low-rate request check against the api. Confirms the service
# stays healthy under a reasonable burst (NOT a DoS). Run on Kali.
set -Eeuo pipefail
BASE="${BASE:-http://10.66.6.10:30080}"
COUNT="${COUNT:-50}"
EVID="${EVIDENCE_DIR:-$HOME/lab-evidence}"; mkdir -p "$EVID"
log="$EVID/rate-$(date -u +%Y%m%dT%H%M%SZ).log"
ok=0
echo "[*] sending $COUNT requests to $BASE/api/v1/version (low rate)" | tee "$log"
for _ in $(seq 1 "$COUNT"); do
  code="$(curl -s -o /dev/null -w '%{http_code}' --max-time 5 "$BASE/api/v1/version" || echo 000)"
  [ "$code" = 200 ] && ok=$((ok+1))
  sleep 0.1
done
ready="$(curl -s -o /dev/null -w '%{http_code}' --max-time 5 "$BASE/health/ready" || echo 000)"
echo "[*] $ok/$COUNT returned 200; /health/ready after = $ready" | tee -a "$log"
if [ "$ok" -ge "$((COUNT * 9 / 10))" ] && [ "$ready" = 200 ]; then
  echo "PASS: api stayed healthy" | tee -a "$log"; exit 0
else
  echo "FAIL: api degraded under a reasonable burst" | tee -a "$log"; exit 1
fi
