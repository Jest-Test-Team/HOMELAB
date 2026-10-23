#!/usr/bin/env bash
# THE ACCEPTANCE GATE. Run on the Ubuntu VM (it has both the management and lab
# NICs). Verifies the lab segment is reachable AND that Kali cannot escape it.
# Deploy no deliberately vulnerable target until this passes.
#
#   verify-lab-isolation.sh
#
# Checks (matrix):
#   Ubuntu side  - no forwarding lab<->management; dashboard NodePort tailscale-only
#   Lab link     - Ubuntu <-> Kali reachable on the lab subnet (L2 works)
#   Kali side    - CAN reach the authorized test ports on the Ubuntu lab IP
#                - CANNOT reach SSH/k3s/DB/Redis/dashboard on the Ubuntu lab IP
#                - CANNOT reach the home LAN, the Mac, Tailscale (100.64/10), or
#                  the internet
# Kali is driven over SSH on the lab link (key installed by the kali role).
set -Eeuo pipefail
# shellcheck source=lab/scripts/_lab_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_lab_common.sh"

case "${1:-}" in -h|--help) sed -n '2,20p' "$0"; exit 0 ;; esac
on_guest
KALI_SSH="${KALI_SSH:-kali@$LAB_KALI_IP}"
SSH=(ssh -o BatchMode=yes -o ConnectTimeout=5 -o StrictHostKeyChecking=accept-new "$KALI_SSH")

# A command that should SUCCEED from Kali.
kali_can() { "${SSH[@]}" "$2" >/dev/null 2>&1 && pass "Kali CAN $1" || fail "Kali cannot $1 (expected reachable)"; }
# A command that should FAIL from Kali (blocked/unreachable).
kali_cannot() { "${SSH[@]}" "$2" >/dev/null 2>&1 && fail "Kali CAN reach $1 (should be blocked)" || pass "Kali blocked from $1"; }

info "=== Ubuntu side ==="
# Management default route must not go via the lab interface.
lab_if="$(ip -o -4 addr show | awk -v ip="$LAB_UBUNTU_IP" '$4 ~ ip {print $2}')"
[ -n "$lab_if" ] && pass "lab interface is $lab_if ($LAB_UBUNTU_IP)" || fail "no interface holds $LAB_UBUNTU_IP (run the ubuntu-lab role)"
def_if="$(ip -o -4 route show default | awk '{print $5; exit}')"
[ -n "$def_if" ] && [ "$def_if" != "$lab_if" ] && pass "default route via $def_if, not the lab" || fail "default route via the lab interface"
# IP forwarding between lab and management must be dropped.
if nft list ruleset 2>/dev/null | grep -q 'homelab_lab'; then
  pass "nftables lab table present"
else
  warn "no nftables homelab_lab table; run the ubuntu-lab role"
fi
# Dashboard NodePort restricted to tailscale0.
if nft list table inet homelab_mgmt 2>/dev/null | grep -q '30300'; then
  pass "dashboard NodePort guarded by nftables (tailscale0 only)"
else
  warn "dashboard NodePort not guarded; run deploy/scripts/local_migrate/23-guest-nodeport-firewall.sh"
fi

info "=== lab link ==="
ping -c1 -W2 "$LAB_KALI_IP" >/dev/null 2>&1 && pass "Ubuntu can ping Kali ($LAB_KALI_IP)" || fail "lab L2 unreachable: Ubuntu cannot ping $LAB_KALI_IP"
if ! "${SSH[@]}" true 2>/dev/null; then
  warn "cannot SSH to $KALI_SSH over the lab; run the kali role (installs the orchestration key), then rerun the Kali checks"
  finish; exit
fi

info "=== Kali side: authorized surface reachable ==="
kali_can "reach api on the lab ($LAB_UBUNTU_IP:$API_LAB_PORT)" "curl -s -o /dev/null --max-time 4 http://$LAB_UBUNTU_IP:$API_LAB_PORT/health/live"
kali_can "reach mcp on the lab ($LAB_UBUNTU_IP:$MCP_LAB_PORT)" "curl -s -o /dev/null --max-time 4 http://$LAB_UBUNTU_IP:$MCP_LAB_PORT/health/live"

info "=== Kali side: everything else on the Ubuntu lab IP is blocked ==="
for p in 22 6443 5432 6379 30300; do
  kali_cannot "$LAB_UBUNTU_IP:$p" "bash -c 'exec 3<>/dev/tcp/$LAB_UBUNTU_IP/$p'"
done

info "=== Kali side: no escape to LAN / Mac / Tailscale / internet ==="
lan_gw="$(ip -o -4 route show default | awk '{print $3; exit}')"
[ -n "$lan_gw" ] && kali_cannot "home LAN gateway $lan_gw" "ping -c1 -W2 $lan_gw"
kali_cannot "Tailscale CGNAT (100.64.0.0/10 sample 100.64.0.1)" "ping -c1 -W2 100.64.0.1"
kali_cannot "the internet (1.1.1.1)" "ping -c1 -W2 1.1.1.1"
kali_cannot "the internet by DNS (example.com)" "curl -s -o /dev/null --max-time 5 http://example.com"
[ -n "${MAC_LAB_IP:-}" ] && kali_cannot "the Mac ($MAC_LAB_IP)" "ping -c1 -W2 $MAC_LAB_IP"

echo
info "macOS host: also run on the Mac -> lab/macos/install-pf-anchor.sh verify"
finish
