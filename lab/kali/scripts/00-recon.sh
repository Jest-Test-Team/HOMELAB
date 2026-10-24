#!/usr/bin/env bash
# Step 0 — Reconnaissance: which ports are exposed on the target.
# Expectation: api/mcp NodePorts + SSH reachable; DB ports and the dashboard
# NodePort filtered. 6443 (k3s API) SHOULD be filtered once 24-guest-apiserver
# -firewall.sh is applied; if it answers, that is a finding.
set -Eeuo pipefail
# shellcheck source=lab/kali/scripts/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

scope_banner
hr "TCP exposure on $TARGET"

check() { # LABEL PORT EXPECT(open|closed)
  local label="$1" port="$2" expect="$3" state
  if tcp_open "$TARGET" "$port"; then state=open; else state=closed; fi
  if [ "$state" = "$expect" ]; then
    pass "$label :$port -> $state (expected $expect)"
  else
    fail "$label :$port -> $state (expected $expect)"
  fi
}

check "SSH"              22                 open
check "api NodePort"     "$API_PORT"        open
check "mcp NodePort"     "$MCP_PORT"        open
check "PostgreSQL"       "$PG_PORT"         closed
check "Redis"            "$REDIS_PORT"      closed
check "dashboard"        "$DASH_PORT"       closed
check "k3s API"          "$APISERVER_PORT"  closed

if command -v nmap >/dev/null 2>&1; then
  hr "nmap service scan (top ports)"
  nmap -Pn --open -p "22,$API_PORT,$MCP_PORT,$PG_PORT,$REDIS_PORT,$DASH_PORT,$APISERVER_PORT" "$TARGET" \
    | sed 's/^/  /'
else
  info "nmap not installed; skipping service scan (sudo apt install -y nmap)"
fi

summary "recon"
