#!/usr/bin/env bash
# P1 (dev Mac): SSH acceptance checks SSH-01, SSH-02 and SSH-04.
#
#   15-devmac-verify-ssh.sh
#
# SSH-01 runs only if utm-homelab-lan is configured. SSH-03 (WAN) needs the
# Mac on another network, such as a phone hotspot: rerun this there with
# --wan, and record it UNVERIFIED if you cannot.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

WAN=0
while [ $# -gt 0 ]; do
  case "$1" in
    --wan) WAN=1; shift ;;
    -h|--help) sed -n '2,8p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos "dev Mac"
O=(-o BatchMode=yes -o ConnectTimeout=10)
H="$VM_HOSTNAME"

ssh "${O[@]}" "$H" 'hostname; id -un; uname -m' >/dev/null 2>&1 && pass "SSH-02 key login via Tailscale" || fail "SSH-02 ssh $H failed"

if [ "$(ssh -G "$H-lan" 2>/dev/null | awk '/^hostname / {print $2}')" != "$H-lan" ]; then
  ssh "${O[@]}" "$H-lan" true >/dev/null 2>&1 && pass "SSH-01 key login via LAN" || fail "SSH-01 ssh $H-lan failed"
else
  info "SSH-01 N/A: no $H-lan entry (UTM Shared mode)"
fi

out="$(ssh -o ConnectTimeout=10 -o BatchMode=yes -o PubkeyAuthentication=no -o PreferredAuthentications=password,keyboard-interactive "$H" true 2>&1 || true)"
case "$out" in
  *"Permission denied (publickey)"*) pass "SSH-04 password login refused" ;;
  *) fail "SSH-04 password login not refused as expected: $out" ;;
esac
out="$(ssh "${O[@]}" -o User=root "$H" true 2>&1 || true)"
case "$out" in
  *"Permission denied"*) pass "SSH-04 root login refused" ;;
  *) fail "SSH-04 root login not refused: $out" ;;
esac

if [ "$WAN" -eq 1 ]; then
  TS=/Applications/Tailscale.app/Contents/MacOS/Tailscale
  command -v tailscale >/dev/null 2>&1 && TS=tailscale
  show "$TS" ping -c 3 "$H"
  ssh "${O[@]}" "$H" 'hostname && uptime' && pass "SSH-03 login from off-LAN" || fail "SSH-03 failed"
fi
finish
