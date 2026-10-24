#!/usr/bin/env bash
# Shared helpers for the Kali attack scripts. Source, do not execute.
#
# Scope: the operator's OWN homelab, per lab/ROE.md. Non-destructive, low-rate.
# Do not run against anything you do not own.
#
# Configuration (override via the environment):
#   TARGET          node/gateway to test        (default 192.168.64.4)
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

TARGET="${TARGET:-192.168.64.4}"
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
pass() { PASS_N=$((PASS_N+1)); printf '  %sPASS%s %s\n' "$_c_green" "$_c_off" "$*"; }
fail() { FAIL_N=$((FAIL_N+1)); printf '  %sFAIL%s %s\n' "$_c_red" "$_c_off" "$*"; }
warn() { WARN_N=$((WARN_N+1)); printf '  %sWARN%s %s\n' "$_c_yellow" "$_c_off" "$*"; }
info() { printf '  %s%s%s\n' "$_c_dim" "$*" "$_c_off"; }
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
