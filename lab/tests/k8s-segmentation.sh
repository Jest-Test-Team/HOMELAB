#!/usr/bin/env bash
# Phase-1: confirm the datastore / control-plane / admin ports are NOT reachable
# from the lab, i.e. Kubernetes + host segmentation holds. Run on Kali.
set -Eeuo pipefail
TARGET="${TARGET:-10.66.6.10}"
BLOCKED="${BLOCKED:-22 5432 6379 6443 30300}"
EVID="${EVIDENCE_DIR:-$HOME/lab-evidence}"; mkdir -p "$EVID"
log="$EVID/segmentation-$(date -u +%Y%m%dT%H%M%SZ).log"
rc=0
for p in $BLOCKED; do
  if timeout 4 bash -c "exec 3<>/dev/tcp/$TARGET/$p" 2>/dev/null; then
    echo "FAIL: $TARGET:$p is reachable (should be blocked)" | tee -a "$log"; rc=1
  else
    echo "ok: $TARGET:$p blocked" | tee -a "$log"
  fi
done
[ "$rc" -eq 0 ] && echo "PASS: all restricted ports blocked" | tee -a "$log"
exit "$rc"
