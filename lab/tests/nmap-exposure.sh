#!/usr/bin/env bash
# Phase-1: confirm ONLY the authorized ports are open on the Ubuntu lab IP.
# Run on Kali. Scope: see ROE.md. Non-destructive TCP scan of a single host.
set -Eeuo pipefail
TARGET="${TARGET:-10.66.6.10}"
EXPECTED="${EXPECTED:-30080,30081}"
EVID="${EVIDENCE_DIR:-$HOME/lab-evidence}"; mkdir -p "$EVID"
out="$EVID/nmap-$(date -u +%Y%m%dT%H%M%SZ).gnmap"
echo "[*] scanning $TARGET (authorized lab target per ROE.md)"
nmap -Pn -T3 -p- --open -oG "$out" "$TARGET" >/dev/null
open_ports="$(awk -F'Ports: ' '/Ports:/ {print $2}' "$out" | tr ',' '\n' \
  | awk -F'/' '/open/ {gsub(/ /,"",$1); print $1}' | sort -n | paste -sd, -)"
echo "[*] open ports: ${open_ports:-none}"
echo "[*] expected:   $EXPECTED"
if [ "$open_ports" = "$EXPECTED" ]; then
  echo "PASS: only the authorized ports are open"; exit 0
else
  echo "FAIL: exposure differs from the authorized surface (see $out)"; exit 1
fi
