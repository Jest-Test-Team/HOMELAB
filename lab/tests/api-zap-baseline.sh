#!/usr/bin/env bash
# Phase-1: OWASP ZAP baseline (passive) scan of the api. Run on Kali.
# Uses the zaproxy package if present, else the ZAP docker image if available.
set -Eeuo pipefail
TARGET="${TARGET:-http://10.66.6.10:30080}"
EVID="${EVIDENCE_DIR:-$HOME/lab-evidence}"; mkdir -p "$EVID"
report="$EVID/zap-baseline-$(date -u +%Y%m%dT%H%M%SZ).html"
echo "[*] ZAP baseline against $TARGET (authorized, passive)"
if command -v zap-baseline.py >/dev/null 2>&1; then
  zap-baseline.py -t "$TARGET" -r "$report" || true
elif command -v zaproxy >/dev/null 2>&1; then
  echo "[!] zap-baseline.py not on PATH; run the baseline from the ZAP GUI (zaproxy) against $TARGET"
else
  echo "[!] ZAP not installed; install with: sudo apt install -y zaproxy"
  exit 1
fi
echo "[*] report (if generated): $report"
