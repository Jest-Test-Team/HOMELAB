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

# ---- audit (append-only, shared homelab log; never committed) --------------
AUDIT="${AUDIT:-1}"
AUDIT_DIR="${AUDIT_DIR:-$EVIDENCE_DIR/audit}"
AUDIT_LOG="${AUDIT_LOG:-$AUDIT_DIR/homelab-audit.log}"
AUDIT_JSONL="${AUDIT_JSONL:-$AUDIT_DIR/homelab-audit.jsonl}"
AUDIT_RUN_ID="${AUDIT_RUN_ID:-$(date -u +%Y%m%dT%H%M%SZ)-$$}"
_aj() { local s=${1-}; s=${s//\\/\\\\}; s=${s//\"/\\\"}; s=${s//$'\n'/\\n}; printf '%s' "$s"; }
audit() {  # audit LEVEL MESSAGE
  [ "$AUDIT" = 1 ] || return 0
  mkdir -p "$AUDIT_DIR" 2>/dev/null && chmod 700 "$AUDIT_DIR" 2>/dev/null || true
  local ts; ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  printf '%s  run=%s  %-5s step=%-14s %s\n' "$ts" "$AUDIT_RUN_ID" "$1" "tool.sh" "$2" >>"$AUDIT_LOG" 2>/dev/null || true
  printf '{"ts":"%s","run":"%s","level":"%s","step":"tool.sh","target":"%s","operator":"%s","host":"%s","msg":"%s"}\n' \
    "$ts" "$AUDIT_RUN_ID" "$1" "$(_aj "${TARGET:-}")" "$(_aj "$(id -un 2>/dev/null)")" "$(_aj "$(hostname 2>/dev/null)")" "$(_aj "$2")" \
    >>"$AUDIT_JSONL" 2>/dev/null || true
}

tool="${1:-}"
[ -n "$tool" ] || die "usage: ./tool.sh <tool> [args...]   (tool names: see docs/catalogue.en.md)"
shift || true

if ! command -v "$tool" >/dev/null 2>&1; then
  die "$tool is not installed — install its category with ./install-tools.sh cat:<slug> (see catalogue), or: sudo apt install -y $tool"
fi

mkdir -p "$EVIDENCE_DIR"
stamp="$(date -u +%Y%m%dT%H%M%SZ)"
log="$EVIDENCE_DIR/tool-$tool-$stamp.md"
audit BEGIN "run: $tool $* (target=${TARGET:-none})"
rcfile="$(mktemp)"            # carry the tool's exit code out of the `| tee` subshell
{
  printf '# %s — %s\n\n' "$tool" "$stamp"
  # shellcheck disable=SC2016  # backticks are literal markdown, not command substitution
  printf -- '- host: `%s`   target: `%s`\n' "$(hostname)" "${TARGET:-<none set>}"
  printf -- '- scope: operator-owned (lab/ROE.md), non-destructive\n\n'
  printf -- '--- AUTHORIZED LAB TEST (lab/ROE.md) --- target=%s\n\n' "${TARGET:-<none>}"
  printf '```\n'
  printf '$ %s %s\n' "$tool" "$*"
  if "$tool" "$@" 2>&1; then echo 0 >"$rcfile"; else r=$?; echo "$r" >"$rcfile"; printf '(exit %s)\n' "$r"; fi
  printf '```\n'
} 2>&1 | tee "$log"
rc="$(cat "$rcfile" 2>/dev/null || echo '?')"; rm -f "$rcfile"
audit END "exit=$rc log=$log"
printf '\nlog: %s\n' "$log"
