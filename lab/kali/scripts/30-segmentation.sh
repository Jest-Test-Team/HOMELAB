#!/usr/bin/env bash
# Step 3 — Network segmentation: the datastores and the cluster control plane
# must NOT be reachable from the attacker. PostgreSQL, Redis and the dashboard
# NodePort must be filtered; the k3s API (6443) must be filtered once
# 24-guest-apiserver-firewall.sh is applied.
set -Eeuo pipefail
# shellcheck source=lab/kali/scripts/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

scope_banner
hr "segmentation from attacker to $TARGET"

must_block() { # LABEL PORT
  if tcp_open "$TARGET" "$2"; then
    fail "$1 :$2 reachable (should be blocked)"
  else
    pass "$1 :$2 blocked"
  fi
}

must_block "PostgreSQL"         "$PG_PORT"
must_block "Redis"              "$REDIS_PORT"
must_block "dashboard NodePort" "$DASH_PORT"
must_block "k3s API"            "$APISERVER_PORT"

summary "segmentation"
