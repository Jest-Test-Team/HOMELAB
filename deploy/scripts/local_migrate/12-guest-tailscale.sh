#!/usr/bin/env bash
# P1 (guest): install Tailscale and join the tailnet as utm-homelab.
#
#   12-guest-tailscale.sh          # download the installer, print its SHA-256, stop
#   12-guest-tailscale.sh --yes    # run the installer and `tailscale up`
#
# The installer is saved to ~/tailscale-install.sh so you can read it before
# --yes. `tailscale up` prints an auth URL; approve it from your account.
# Tailscale SSH (--ssh) is deliberately not used: OpenSSH does authentication.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,9p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest

if command -v tailscale >/dev/null 2>&1; then
  pass "tailscale installed: $(tailscale version | head -1)"
else
  installer="$HOME/tailscale-install.sh"
  if [ ! -f "$installer" ]; then
    curl -fsSL https://tailscale.com/install.sh -o "$installer"
    info "downloaded $installer; read it before --yes:  less $installer"
  fi
  show sha256sum "$installer"
  confirm "sudo sh $installer" || { finish; exit; }
  sudo sh "$installer"
fi

if tailscale status >/dev/null 2>&1; then
  pass "tailscale is up"
elif confirm "sudo tailscale up --hostname=$VM_HOSTNAME"; then
  sudo tailscale up --hostname="$VM_HOSTNAME"
fi

if ip4="$(tailscale ip -4 2>/dev/null)"; then
  pass "Tailscale IPv4: $ip4"
  info "next on the dev Mac: 13-devmac-ssh-config.sh --user $(id -un) --host $ip4"
  info "tailnet policy: add a grant for tcp:22 to $VM_HOSTNAME only (docs/access.md §3)"
fi
finish
