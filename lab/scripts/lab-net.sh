#!/usr/bin/env bash
# Lab network helper: verify prerequisites and detect the macOS vmnet bridge
# that UTM "Host" mode uses for the isolated lab segment.
#
#   lab-net.sh            # report
#
# Design: the lab is an isolated L2 segment. Both VMs get a UTM NIC in "Host"
# mode (vmnet host); inside the guests we assign STATIC lab IPs (Ubuntu
# 10.66.6.10, Kali 10.66.6.20) with NO gateway, so there is no route off the
# segment to the home LAN, the internet, or Tailscale. macOS puts the vmnet
# host interface on its own auto subnet (different from 10.66.6.0/24), so the
# Mac has no address on the lab subnet; the pf anchor (lab/macos) enforces that.
set -Eeuo pipefail
# shellcheck source=lab/scripts/_lab_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_lab_common.sh"

case "${1:-}" in -h|--help) sed -n '2,13p' "$0"; exit 0 ;; esac
on_macos
[ -x "$UTMCTL" ] || warn "utmctl not found at $UTMCTL"

info "lab subnet $LAB_SUBNET  ubuntu=$LAB_UBUNTU_IP  kali=$LAB_KALI_IP"
info "authorized test ports on $LAB_UBUNTU_IP: $API_LAB_PORT (api), $MCP_LAB_PORT (mcp)"

# Baseline of host bridge interfaces. A UTM Host-mode NIC creates/uses a
# bridge<NNN> (vmnet). It appears once a VM with a Host NIC is running.
echo
info "current bridge interfaces on this Mac:"
for b in $(ifconfig -l | tr ' ' '\n' | grep '^bridge'); do
  ip="$(ipconfig getifaddr "$b" 2>/dev/null || true)"
  members="$(ifconfig "$b" 2>/dev/null | awk '/member:/{printf "%s ",$2}')"
  printf '    %s  ip=%s  members=%s\n' "$b" "${ip:-none}" "${members:-none}"
done

cat <<NOTE

To bring the lab up:
  1. lab/scripts/ubuntu-add-lab-nic.sh --yes      (adds Host NIC to $UBUNTU_VM)
  2. lab/scripts/make-kali-vm.sh --yes            (creates $KALI_VM, Host NIC only)
  3. boot both; run lab/ansible (static IPs + firewalls)
  4. lab/scripts/verify-lab-isolation.sh          (the acceptance gate)

UTM Host mode puts both VMs on one vmnet segment. Cross-VM reachability is NOT
guaranteed by mode alone (see UTM docs); step 4 verifies L2 reachability and the
absence of routes to the home LAN / Mac / Tailscale before any testing.
NOTE
finish
