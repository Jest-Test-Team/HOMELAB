#!/usr/bin/env bash
# Run the full Phase-1 attack suite from Kali and write dated evidence.
#
#   ./run-all.sh                 # run all steps against $TARGET
#   TARGET=10.66.6.10 ./run-all.sh
#   MCP_TOKEN=... ./run-all.sh   # also exercise the valid-token MCP cases
#
# Evidence is written under $EVIDENCE_DIR (default ~/lab-evidence) and tee'd to
# the console. Copy it off the VM with the scp line in lab/ROE.md.
set -Eeuo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=lab/kali/scripts/_common.sh
. "$DIR/_common.sh"

mkdir -p "$EVIDENCE_DIR"
STAMP="$(date -u +%Y-%m-%dT%H%M%SZ)"
OUT="$EVIDENCE_DIR/kali-attack-$STAMP.md"

{
  echo "# HOMELAB Phase-1 attack from Kali — $STAMP"
  echo
  echo "- Attacker: \`$(hostname)\` ($(hostname -I 2>/dev/null | awk '{print $1}'), kernel $(uname -r))"
  echo "- Target: \`$TARGET\` (api:$API_PORT mcp:$MCP_PORT dash:$DASH_PORT pg:$PG_PORT redis:$REDIS_PORT api-server:$APISERVER_PORT)"
  echo "- Scope: operator-owned lab assets (lab/ROE.md). Non-destructive."
  if [ -n "${MCP_TOKEN:-}" ]; then echo "- MCP valid-token cases: enabled"; else echo "- MCP valid-token cases: skipped [no MCP_TOKEN]"; fi
  echo
  echo '```'
  for step in 00-recon 10-api-test 20-mcp-auth 30-segmentation 40-rate-limit; do
    echo "### $step"
    bash "$DIR/$step.sh" || echo "(step $step exited non-zero)"
    echo
  done
  echo '```'
} 2>&1 | tee "$OUT"

echo
echo "Evidence written to: $OUT"
