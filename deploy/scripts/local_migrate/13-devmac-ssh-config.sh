#!/usr/bin/env bash
# P1 (dev Mac): add the utm-homelab host entries to ~/.ssh/config and test them.
#
#   13-devmac-ssh-config.sh --user VM_USER --host TAILSCALE_IP_OR_NAME [--lan-ip IP] [--yes]
#
# Writes a managed block between "# BEGIN homelab" and "# END homelab" (the
# rest of the file is untouched, and a backup is kept). --lan-ip adds
# utm-homelab-lan, only for UTM Bridged mode with a DHCP reservation.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

VM_USER="" HOST="" LAN_IP=""
while [ $# -gt 0 ]; do
  case "$1" in
    --user) VM_USER="${2:?}"; shift 2 ;;
    --host) HOST="${2:?}"; shift 2 ;;
    --lan-ip) LAN_IP="${2:?}"; shift 2 ;;
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,8p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos "dev Mac"
[ -n "$VM_USER" ] && [ -n "$HOST" ] || die "--user and --host are required"
[ -f "$DEV_KEY" ] || die "no $DEV_KEY; run 11-devmac-ssh-key.sh first"

TS=/Applications/Tailscale.app/Contents/MacOS/Tailscale
command -v tailscale >/dev/null 2>&1 && TS=tailscale
if "$TS" status >/dev/null 2>&1; then pass "Tailscale is running on this Mac"; else warn "Tailscale not running on this Mac; install the app and join the same tailnet"; fi

block="$(mktemp)"
{
  echo "# BEGIN homelab (managed by deploy/scripts/local_migrate/13-devmac-ssh-config.sh)"
  printf 'Host %s\n    HostName %s\n    User %s\n    IdentityFile %s\n    IdentitiesOnly yes\n    ServerAliveInterval 30\n    ServerAliveCountMax 3\n' \
    "$VM_HOSTNAME" "$HOST" "$VM_USER" "$DEV_KEY"
  [ -z "$LAN_IP" ] || printf '\nHost %s-lan\n    HostName %s\n    User %s\n    IdentityFile %s\n    IdentitiesOnly yes\n' \
    "$VM_HOSTNAME" "$LAN_IP" "$VM_USER" "$DEV_KEY"
  echo "# END homelab"
} > "$block"

cfg="$HOME/.ssh/config"
new="$(mktemp)"
if [ -f "$cfg" ]; then
  # Drop our old block and the blank lines that followed it.
  awk '/^# BEGIN homelab/ {skip=1; next} /^# END homelab/ {skip=0; lead=1; next}
       skip {next} lead && /^[[:space:]]*$/ {next} {lead=0; print}' "$cfg" > "$new"
fi
# Host blocks above ours could shadow it; ours goes first.
{ cat "$block"; if [ -s "$new" ]; then echo; cat "$new"; fi; } > "$new.full"
rm -f "$new" "$block"
if [ -f "$cfg" ] && cmp -s "$cfg" "$new.full"; then
  pass "$cfg already up to date"; rm -f "$new.full"
elif confirm "update the homelab block in $cfg"; then
  install -d -m 700 "$HOME/.ssh"
  touch "$cfg"; chmod 600 "$cfg"
  chmod 600 "$new.full"
  replace_if_changed "$cfg" "$new.full"
else
  rm -f "$new.full"
fi

for h in "$VM_HOSTNAME" ${LAN_IP:+"$VM_HOSTNAME-lan"}; do
  if out="$(ssh -o BatchMode=yes -o ConnectTimeout=10 "$h" 'hostname; id -un; uname -m' 2>&1)"; then
    pass "ssh $h: $(echo "$out" | tr '\n' ' ')"
  else
    fail "ssh $h failed: $out"
  fi
done
finish
