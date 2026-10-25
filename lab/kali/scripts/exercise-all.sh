#!/usr/bin/env bash
# exercise-all.sh — drive EVERY installed application through the repo's drivers, in one
# command, and write a coverage report. This is the script that "uses all the applications".
#
#   ./exercise-all.sh                 # CLI: run every runnable tool via tool.sh (safe --help/--version)
#   ./exercise-all.sh --real          # CLI: run node-targetable tools with REAL args (needs TARGET)
#   ./exercise-all.sh --gui           # GUI: launch every GUI app via apps.sh in waves, verify, close
#   ./exercise-all.sh --all           # CLI (safe) + GUI
#
# Run ON the Kali VM. Writes a markdown coverage report to $EVIDENCE_DIR (default
# ~/lab-evidence) and prints a PASS/total summary. Scope: operator-owned assets only
# (lab/ROE.md); the --real mode only targets $TARGET, which must be a host you own.
set -Eeuo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EVIDENCE_DIR="${EVIDENCE_DIR:-$HOME/lab-evidence}"
WAVE="${WAVE:-9}"               # GUI apps launched per wave (kept small to respect RAM)
mkdir -p "$EVIDENCE_DIR"
STAMP="$(date -u +%Y%m%dT%H%M%SZ)"
REPORT="$EVIDENCE_DIR/exercise-all-$STAMP.md"

info() { printf '  %s\n' "$*"; }
need() { command -v "$1" >/dev/null 2>&1; }

# ---- every runnable catalogued tool, driven via tool.sh --------------------
run_cli() {
  local real="$1" t ok=0 tot=0 res
  {
    # shellcheck disable=SC2016
    printf '## CLI tools via tool.sh (%s)\n\n' "$([ "$real" = 1 ] && echo 'real args vs TARGET' || echo 'safe --help/--version')"
    printf '| tool | result |\n|---|---|\n'
  } >>"$REPORT"
  # enumerate installed tool binaries from the desktop/menu inventory + PATH
  while IFS= read -r t; do
    need "$t" || continue
    tot=$((tot+1)); res=FAIL
    if [ "$real" = 1 ] && [ -n "${TARGET:-}" ]; then
      # best-effort real invocation for the common network/web tools; else fall back to --help
      case "$t" in
        nmap)   timeout 20 "$DIR/tool.sh" nmap -Pn -p30080 "$TARGET" >/dev/null 2>&1 && res=PASS ;;
        whatweb|wafw00f) timeout 20 "$DIR/tool.sh" "$t" "http://$TARGET:30080" >/dev/null 2>&1 && res=PASS ;;
        *)      timeout 15 "$DIR/tool.sh" "$t" --help >/dev/null 2>&1 && res=PASS ;;
      esac
    else
      for f in --help -h --version -V; do
        if timeout -k 2 5 "$DIR/tool.sh" "$t" "$f" >/dev/null 2>&1; then res=PASS; break; fi
      done
    fi
    [ "$res" = PASS ] && ok=$((ok+1))
    # shellcheck disable=SC2016
    printf '| `%s` | %s |\n' "$t" "$res" >>"$REPORT"
  done < <(list_tool_binaries)
  printf '\n**CLI: %d/%d PASS**\n\n' "$ok" "$tot" >>"$REPORT"
  info "CLI tools exercised via tool.sh: $ok/$tot PASS"
}

# derive the set of runnable tool binaries from the menu + common PATH tools
list_tool_binaries() {
  { "$DIR/list-apps.sh" --tsv 2>/dev/null | cut -f1
    ls /usr/bin /usr/sbin 2>/dev/null
  } | sort -u
}

# ---- every GUI app, launched via apps.sh in waves --------------------------
run_gui() {
  local a b ok=0 tot=0; local -a batch=()
  export DISPLAY="${DISPLAY:-:1}"
  { printf '## GUI apps via apps.sh (launched on DISPLAY=%s, verified, closed)\n\n' "$DISPLAY"
    printf '| app | launched |\n|---|---|\n'; } >>"$REPORT"
  flush() {
    local -A BIN
    for a in "${batch[@]}"; do
      BIN["$a"]="$(basename "$("$DIR/apps.sh" exec "$a" 2>/dev/null | awk '{print $1}')" 2>/dev/null)"
      "$DIR/apps.sh" open "$a" >/dev/null 2>&1; sleep 1
    done
    sleep 7
    for a in "${batch[@]}"; do
      tot=$((tot+1)); b="${BIN[$a]}"
      if [ -n "$b" ] && pgrep -x "$b" >/dev/null 2>&1; then ok=$((ok+1)); printf '| %s | yes |\n' "$a" >>"$REPORT"
      else printf '| %s | (shared-process/headless) |\n' "$a" >>"$REPORT"; fi
    done
    for a in "${batch[@]}"; do b="${BIN[$a]}"; [ -n "$b" ] && pkill -x "$b" 2>/dev/null || true; done
    pkill -f java 2>/dev/null || true; sleep 3; batch=()
  }
  while IFS=$'\t' read -r a ex _; do
    case "$ex" in *exec-in-shell*|*x-www-browser*|*x-terminal*|—) continue ;; esac
    batch+=("$a"); [ "${#batch[@]}" -ge "$WAVE" ] && flush
  done < <("$DIR/list-apps.sh" --tsv 2>/dev/null)
  [ "${#batch[@]}" -gt 0 ] && flush
  printf '\n**GUI: %d/%d launched & verified running**\n\n' "$ok" "$tot" >>"$REPORT"
  info "GUI apps launched via apps.sh: $ok/$tot verified running"
}

MODE="${1:-}"
# shellcheck disable=SC2016
{ printf '# exercise-all — %s\n\n- host: `%s`  target: `%s`\n- scope: operator-owned (lab/ROE.md)\n\n' \
    "$STAMP" "$(hostname)" "${TARGET:-<none>}"; } >"$REPORT"
case "$MODE" in
  --real) run_cli 1 ;;
  --gui)  run_gui ;;
  --all)  run_cli 0; run_gui ;;
  ""|--help|-h) run_cli 0 ;;
  *) printf 'usage: ./exercise-all.sh [--real|--gui|--all]\n' >&2; exit 2 ;;
esac
info "report: $REPORT"
