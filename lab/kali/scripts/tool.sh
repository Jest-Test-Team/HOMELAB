#!/usr/bin/env bash
# tool.sh — run ANY installed Kali CLI tool against an operator-owned asset, with the
# ROE banner and evidence capture. This is the generic driver behind the full catalogue
# (lab/kali/docs/catalogue.en.md / .zh-TW.md): every CLI tool in Kali can be run through
# it. For GUI apps use apps.sh; for the orchestrated multi-tool workflow use toolkit.sh.
#
#   ./tool.sh <tool> [args...]
#   TARGET=<NODE_IP> ./tool.sh nmap -Pn -sV -p 30080 "$TARGET"
#   ./tool.sh nikto -host "http://$TARGET:30080"
#
# Writes a timestamped markdown log to $EVIDENCE_DIR (default ~/lab-evidence) and tees
# it to the console. Scope: operator-owned assets only (lab/ROE.md), non-destructive.
set -Eeuo pipefail
EVIDENCE_DIR="${EVIDENCE_DIR:-$HOME/lab-evidence}"
die() { printf 'error: %s\n' "$*" >&2; exit 1; }

tool="${1:-}"
[ -n "$tool" ] || die "usage: ./tool.sh <tool> [args...]   (tool names: see docs/catalogue.en.md)"
shift || true

if ! command -v "$tool" >/dev/null 2>&1; then
  die "$tool is not installed — install its category with ./install-tools.sh cat:<slug> (see catalogue), or: sudo apt install -y $tool"
fi

mkdir -p "$EVIDENCE_DIR"
stamp="$(date -u +%Y%m%dT%H%M%SZ)"
log="$EVIDENCE_DIR/tool-$tool-$stamp.md"
{
  printf '# %s — %s\n\n' "$tool" "$stamp"
  # shellcheck disable=SC2016  # backticks are literal markdown, not command substitution
  printf -- '- host: `%s`   target: `%s`\n' "$(hostname)" "${TARGET:-<none set>}"
  printf -- '- scope: operator-owned (lab/ROE.md), non-destructive\n\n'
  printf -- '--- AUTHORIZED LAB TEST (lab/ROE.md) --- target=%s\n\n' "${TARGET:-<none>}"
  printf '```\n'
  printf '$ %s %s\n' "$tool" "$*"
  "$tool" "$@" 2>&1 || printf '(exit %s)\n' "$?"
  printf '```\n'
} 2>&1 | tee "$log"
printf '\nlog: %s\n' "$log"
