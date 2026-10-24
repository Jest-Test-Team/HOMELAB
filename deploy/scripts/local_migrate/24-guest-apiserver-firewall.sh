#!/usr/bin/env bash
# A6 (guest): restrict the k3s API server (6443) to the loopback + Tailscale, and
# DROP it on the management/Shared NIC.
#
#   24-guest-apiserver-firewall.sh          # report what it would install
#   24-guest-apiserver-firewall.sh --yes    # install + enable the nftables rule
#
# WHY: k3s binds the API on 0.0.0.0:6443. On the UTM Shared network every VM
# shares one L2 segment, so another VM (e.g. the Kali attacker) can reach
# <node>:6443 directly. The Phase-1 VM attack recorded this as a finding
# (lab-evidence/vm-attack-2026-10-24.md). This step closes that exposure WITHOUT
# breaking the cluster:
#
#   * In-cluster pods reach the API through the kubernetes ClusterIP (10.43.0.1:443),
#     which kube-proxy DNATs to 6443. At prerouting-raw (before DNAT) those packets
#     still carry dport 443, so a dport-6443 drop never matches them.
#   * k3s' own agent/kubelet reach the supervisor on 127.0.0.1:6443 (loopback).
#   * Admin kubectl runs on the node itself (via SSH) against 127.0.0.1.
#
# So we only need to drop dport 6443 arriving on the management interface. The
# table uses an accept policy and a single interface-scoped drop, so it cannot
# accidentally cut off loopback or cluster traffic.
#
# Override the management interface with MGMT_IFACE (default: the default-route
# interface), the API port with APISERVER_PORT (default 6443), and the allowed
# overlay interface with TS_IFACE (default tailscale0).
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

APISERVER_PORT="${APISERVER_PORT:-6443}"
TS_IFACE="${TS_IFACE:-tailscale0}"
# Default management interface = the interface that owns the default route.
MGMT_IFACE="${MGMT_IFACE:-$(ip route show default 2>/dev/null | awk '/default/ {print $5; exit}')}"

while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,28p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest
need_cmd nft

[ -n "$MGMT_IFACE" ] || die "could not detect the management interface; set MGMT_IFACE=<iface>"
if ip link show "$MGMT_IFACE" >/dev/null 2>&1; then
  pass "management interface $MGMT_IFACE present"
else
  die "management interface $MGMT_IFACE not found; set MGMT_IFACE=<iface>"
fi
ip link show "$TS_IFACE" >/dev/null 2>&1 \
  && pass "$TS_IFACE present (API stays reachable over Tailscale)" \
  || warn "$TS_IFACE not found; is Tailscale up? the rule only drops 6443 on $MGMT_IFACE regardless"

NFT_FILE=/etc/homelab/nft/apiserver.nft
UNIT=/etc/systemd/system/homelab-apiserver-fw.service

ruleset() {
  cat <<NFT
# Managed by 24-guest-apiserver-firewall.sh. Accept-policy table: it only drops
# the k3s API port on the management interface (${MGMT_IFACE}). Loopback,
# ${TS_IFACE} and in-cluster ClusterIP (:443 -> DNAT) traffic are unaffected.
table inet homelab_apiserver {
  chain prerouting {
    type filter hook prerouting priority raw; policy accept;
    iifname "lo" accept
    iifname "${TS_IFACE}" tcp dport ${APISERVER_PORT} accept
    iifname "${MGMT_IFACE}" tcp dport ${APISERVER_PORT} drop
  }
}
NFT
}

if [ "$YES" -ne 1 ]; then
  info "would write $NFT_FILE:"
  ruleset | sed 's/^/    /'
  info "would install and enable $UNIT"
  info "after apply, from another VM on the Shared net: nc -z -w3 <node> ${APISERVER_PORT} must fail;"
  info "on the node: sudo k3s kubectl get nodes must still work"
  info "rerun with --yes to apply"
  finish; exit
fi

sudo install -d -m 755 /etc/homelab/nft
ruleset | sudo tee "$NFT_FILE" >/dev/null
sudo nft -c -f "$NFT_FILE" || die "nftables ruleset failed validation"
pass "wrote and validated $NFT_FILE"

sudo tee "$UNIT" >/dev/null <<UNITEOF
[Unit]
Description=Homelab: restrict k3s API ${APISERVER_PORT} to loopback + ${TS_IFACE}
After=network-pre.target
Wants=network-pre.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/sbin/nft -f ${NFT_FILE}
ExecStop=/usr/sbin/nft delete table inet homelab_apiserver
ExecReload=/usr/sbin/nft -f ${NFT_FILE}

[Install]
WantedBy=multi-user.target
UNITEOF
sudo systemctl daemon-reload
sudo systemctl enable --now homelab-apiserver-fw.service
pass "enabled homelab-apiserver-fw.service"

# Self-check: the API must still answer locally.
if sudo k3s kubectl get --raw='/readyz' >/dev/null 2>&1 || curl -sk "https://127.0.0.1:${APISERVER_PORT}/readyz" >/dev/null 2>&1; then
  pass "API still reachable on loopback after applying the rule"
else
  warn "could not confirm local API readiness; check 'sudo systemctl status k3s' and 'sudo nft list table inet homelab_apiserver'"
fi
info "rollback: sudo systemctl disable --now homelab-apiserver-fw.service"
finish
