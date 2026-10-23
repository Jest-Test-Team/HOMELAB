#!/usr/bin/env bash
# A5 (guest): restrict the dashboard NodePort (30300) to the tailscale0 interface.
#
#   23-guest-nodeport-firewall.sh          # report what it would install
#   23-guest-nodeport-firewall.sh --yes    # install + enable the nftables rule
#
# kube-proxy binds every NodePort on 0.0.0.0, so without this rule the dashboard
# is also reachable on the Shared NIC (192.168.64.x). This adds a dedicated,
# accept-policy nftables table that DROPS tcp/30300 on every interface except
# tailscale0, loaded by a systemd unit at boot. It does not touch other rules,
# so it coexists with the lab firewall (lab/ansible role ubuntu-lab).
#
# Override the port with NODEPORT (default 30300) and the allowed interface with
# TS_IFACE (default tailscale0).
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

NODEPORT="${NODEPORT:-30300}"
TS_IFACE="${TS_IFACE:-tailscale0}"
while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,14p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest
need_cmd nft

NFT_FILE=/etc/homelab/nft/nodeport.nft
UNIT=/etc/systemd/system/homelab-nodeport-fw.service

if ip link show "$TS_IFACE" >/dev/null 2>&1; then
  pass "$TS_IFACE present"
else
  warn "$TS_IFACE not found; is Tailscale up? the rule still loads and blocks 30300 everywhere until it appears"
fi

ruleset() {
  cat <<NFT
# Managed by 23-guest-nodeport-firewall.sh. Accept-policy table: it only drops
# the dashboard NodePort on interfaces other than ${TS_IFACE}.
table inet homelab_mgmt {
  # prerouting at raw priority runs BEFORE conntrack/DNAT, so NodePort packets
  # (which kube-proxy DNATs and forwards, never delivering them to INPUT) are
  # still matchable by their original dport here.
  chain prerouting {
    type filter hook prerouting priority raw; policy accept;
    iifname "${TS_IFACE}" tcp dport ${NODEPORT} accept
    iifname "lo" tcp dport ${NODEPORT} accept
    tcp dport ${NODEPORT} drop
  }
}
NFT
}

if [ "$YES" -ne 1 ]; then
  info "would write $NFT_FILE:"
  ruleset | sed 's/^/    /'
  info "would install and enable $UNIT"
  info "rerun with --yes to apply"
  finish; exit
fi

sudo install -d -m 755 /etc/homelab/nft
ruleset | sudo tee "$NFT_FILE" >/dev/null
sudo nft -c -f "$NFT_FILE" || die "nftables ruleset failed validation"
pass "wrote and validated $NFT_FILE"

sudo tee "$UNIT" >/dev/null <<UNITEOF
[Unit]
Description=Homelab: restrict dashboard NodePort to ${TS_IFACE}
After=network-pre.target
Wants=network-pre.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/sbin/nft -f ${NFT_FILE}
ExecStop=/usr/sbin/nft delete table inet homelab_mgmt
ExecReload=/usr/sbin/nft -f ${NFT_FILE}

[Install]
WantedBy=multi-user.target
UNITEOF
sudo systemctl daemon-reload
sudo systemctl enable --now homelab-nodeport-fw.service
pass "enabled homelab-nodeport-fw.service"

if sudo nft list table inet homelab_mgmt >/dev/null 2>&1; then
  pass "nftables table homelab_mgmt active"
  sudo nft list table inet homelab_mgmt | sed 's/^/    /'
else
  fail "nftables table homelab_mgmt not active"
fi
info "verify from the Mac: curl http://192.168.64.4:${NODEPORT} should hang/refuse; http://<tailscale-ip>:${NODEPORT} should work"
finish
