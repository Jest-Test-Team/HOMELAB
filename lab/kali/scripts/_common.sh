#!/usr/bin/env bash
# Shared helpers for the Kali attack scripts. Source, do not execute.
#
# Scope: the operator's OWN homelab, per lab/ROE.md. Non-destructive, low-rate.
# Do not run against anything you do not own.
#
# Configuration (override via the environment):
#   TARGET          node/gateway to test        (REQUIRED, e.g. your node IP)
#   API_PORT        api NodePort                 (default 30080)
#   MCP_PORT        mcp NodePort                 (default 30081)
#   DASH_PORT       dashboard NodePort           (default 30300)
#   PG_PORT         PostgreSQL (should be shut)  (default 5432)
#   REDIS_PORT      Redis (should be shut)       (default 6379)
#   APISERVER_PORT  k3s API (should be shut)     (default 6443)
#   MCP_TOKEN       valid MCP bearer token       (optional; enables valid-token tests)
#   MCP_HOST        MCP allow-listed Host header (default mcp.homelab.svc)
#   EVIDENCE_DIR    where run-all.sh writes       (default ~/lab-evidence)
set -Eeuo pipefail

TARGET="${TARGET:?set TARGET to the target IP, e.g. TARGET=<node-ip> ./run-all.sh}"
API_PORT="${API_PORT:-30080}"
MCP_PORT="${MCP_PORT:-30081}"
DASH_PORT="${DASH_PORT:-30300}"
PG_PORT="${PG_PORT:-5432}"
REDIS_PORT="${REDIS_PORT:-6379}"
APISERVER_PORT="${APISERVER_PORT:-6443}"
MCP_HOST="${MCP_HOST:-mcp.homelab.svc}"
EVIDENCE_DIR="${EVIDENCE_DIR:-$HOME/lab-evidence}"

# ---- output helpers -------------------------------------------------------
_c_green=$'\033[32m'; _c_red=$'\033[31m'; _c_yellow=$'\033[33m'; _c_dim=$'\033[2m'; _c_off=$'\033[0m'
[ -t 1 ] || { _c_green=; _c_red=; _c_yellow=; _c_dim=; _c_off=; }
PASS_N=0; FAIL_N=0; WARN_N=0
pass() { PASS_N=$((PASS_N+1)); printf '  %sPASS%s %s\n' "$_c_green" "$_c_off" "$*"; audit_event PASS '' "$*"; }
fail() { FAIL_N=$((FAIL_N+1)); printf '  %sFAIL%s %s\n' "$_c_red" "$_c_off" "$*"; audit_event FAIL '' "$*"; }
warn() { WARN_N=$((WARN_N+1)); printf '  %sWARN%s %s\n' "$_c_yellow" "$_c_off" "$*"; audit_event WARN '' "$*"; }
info() { printf '  %s%s%s\n' "$_c_dim" "$*" "$_c_off"; audit_event INFO '' "$*"; }
hr()   { printf '\n== %s ==\n' "$*"; }
summary() { printf '\n%s: %d pass, %d fail, %d warn\n' "${1:-result}" "$PASS_N" "$FAIL_N" "$WARN_N"; }

# ---- probes ---------------------------------------------------------------
# tcp_open HOST PORT  -> 0 if a TCP connect succeeds within 3s
tcp_open() {
  if command -v nc >/dev/null 2>&1; then
    nc -z -w3 "$1" "$2" >/dev/null 2>&1
  else
    (exec 3<>"/dev/tcp/$1/$2") >/dev/null 2>&1
  fi
}

# http_code URL [curl args...]  -> prints the HTTP status (000 on failure)
http_code() {
  local url="$1"; shift
  curl -s -o /dev/null -w '%{http_code}' --max-time 6 "$@" "$url" 2>/dev/null || echo 000
}

scope_banner() {
  printf '%s--- AUTHORIZED LAB TEST ---%s target=%s  scope=operator-owned (lab/ROE.md)\n' \
    "$_c_yellow" "$_c_off" "$TARGET"
}

# ---- audit log ------------------------------------------------------------
# Append-only, extremely detailed record of EVERY attack action, for the
# homelab's own records. Lives under $EVIDENCE_DIR/audit, i.e. OUTSIDE the git
# repo — the audit log holds real targets/IPs and must never be committed.
#
# Two synchronised sinks per run:
#   homelab-audit.log    human-readable, one line per event + framed run blocks
#   homelab-audit.jsonl  one JSON object per event (machine-parseable)
#
# Set AUDIT=0 to disable. All writes are best-effort: a logging failure must
# never abort an attack step (every write ends with `|| true`).
AUDIT="${AUDIT:-1}"
AUDIT_DIR="${AUDIT_DIR:-$EVIDENCE_DIR/audit}"
AUDIT_LOG="${AUDIT_LOG:-$AUDIT_DIR/homelab-audit.log}"
AUDIT_JSONL="${AUDIT_JSONL:-$AUDIT_DIR/homelab-audit.jsonl}"
# One id shared by every step of a run (run-all.sh exports it so all steps agree).
AUDIT_RUN_ID="${AUDIT_RUN_ID:-$(date -u +%Y%m%dT%H%M%SZ)-$$}"

_audit_ts() { date -u +%Y-%m-%dT%H:%M:%SZ; }
_json_esc() { local s=${1-}; s=${s//\\/\\\\}; s=${s//\"/\\\"}; s=${s//$'\t'/\\t}; s=${s//$'\n'/\\n}; s=${s//$'\r'/}; printf '%s' "$s"; }
_sha256() {
  if command -v sha256sum >/dev/null 2>&1; then sha256sum "$1" 2>/dev/null | awk '{print $1}'
  elif command -v shasum >/dev/null 2>&1; then shasum -a 256 "$1" 2>/dev/null | awk '{print $1}'
  else echo unavailable; fi
}

audit_init() {
  [ "$AUDIT" = 1 ] || return 0
  mkdir -p "$AUDIT_DIR" 2>/dev/null || return 0
  chmod 700 "$AUDIT_DIR" 2>/dev/null || true
}

# audit_event LEVEL [STEP] MESSAGE
# STEP defaults to $AUDIT_STEP (exported per step by run-all.sh) or the script name.
audit_event() {
  [ "$AUDIT" = 1 ] || return 0
  local level="$1" step="${2:-}" msg="${3:-}"
  [ -n "$step" ] || step="${AUDIT_STEP:-$(basename "${0:-?}" .sh)}"
  [ -d "$AUDIT_DIR" ] || audit_init
  printf '%s  run=%s  %-5s step=%-14s %s\n' \
    "$(_audit_ts)" "$AUDIT_RUN_ID" "$level" "$step" "$msg" >>"$AUDIT_LOG" 2>/dev/null || true
  printf '{"ts":"%s","run":"%s","level":"%s","step":"%s","target":"%s","operator":"%s","host":"%s","msg":"%s"}\n' \
    "$(_audit_ts)" "$AUDIT_RUN_ID" "$level" "$(_json_esc "$step")" "$(_json_esc "${TARGET:-}")" \
    "$(_json_esc "$(id -un 2>/dev/null)")" "$(_json_esc "$(hostname 2>/dev/null)")" "$(_json_esc "$msg")" \
    >>"$AUDIT_JSONL" 2>/dev/null || true
}

# audit_begin — frame the start of a run with full context (call once, from run-all.sh).
# Reads AUDIT_CMD (the command line) and AUDIT_EVIDENCE (the evidence file path) if set.
audit_begin() {
  [ "$AUDIT" = 1 ] || return 0
  audit_init
  {
    echo "================================================================"
    echo "RUN $AUDIT_RUN_ID  started $(_audit_ts)"
    echo "  operator : $(id -un 2>/dev/null)@$(hostname 2>/dev/null)"
    echo "  attacker : $(hostname -I 2>/dev/null | awk '{print $1}') kernel $(uname -r 2>/dev/null)"
    echo "  target   : $TARGET  (api:$API_PORT mcp:$MCP_PORT dash:$DASH_PORT pg:$PG_PORT redis:$REDIS_PORT api-server:$APISERVER_PORT)"
    echo "  scope    : operator-owned (lab/ROE.md); non-destructive, low-rate"
    echo "  command  : ${AUDIT_CMD:-<unknown>}"
    echo "  mcp-token: $([ -n "${MCP_TOKEN:-}" ] && echo present || echo absent)"
    echo "  evidence : ${AUDIT_EVIDENCE:-<none>}"
    echo "----------------------------------------------------------------"
  } >>"$AUDIT_LOG" 2>/dev/null || true
  audit_event BEGIN run "attack run started against $TARGET"
}

# audit_end [STATUS] — frame the end of a run; tallies this run's events and
# fingerprints the evidence file so the log proves what was produced.
audit_end() {
  [ "$AUDIT" = 1 ] || return 0
  local status="${1:-0}" p f w
  # grep -c already prints 0 and exits 1 on no match; `|| true` keeps that single 0.
  p=$(grep -c "\"run\":\"$AUDIT_RUN_ID\",\"level\":\"PASS\"" "$AUDIT_JSONL" 2>/dev/null || true)
  f=$(grep -c "\"run\":\"$AUDIT_RUN_ID\",\"level\":\"FAIL\"" "$AUDIT_JSONL" 2>/dev/null || true)
  w=$(grep -c "\"run\":\"$AUDIT_RUN_ID\",\"level\":\"WARN\"" "$AUDIT_JSONL" 2>/dev/null || true)
  audit_event END run "finished status=$status pass=$p fail=$f warn=$w"
  {
    echo "----------------------------------------------------------------"
    echo "RUN $AUDIT_RUN_ID  finished $(_audit_ts)  status=$status"
    echo "  totals   : $p pass, $f fail, $w warn"
    if [ -n "${AUDIT_EVIDENCE:-}" ] && [ -f "${AUDIT_EVIDENCE:-/nonexistent}" ]; then
      echo "  evidence : $AUDIT_EVIDENCE"
      echo "  sha256   : $(_sha256 "$AUDIT_EVIDENCE")"
    fi
    echo "================================================================"
  } >>"$AUDIT_LOG" 2>/dev/null || true
}
