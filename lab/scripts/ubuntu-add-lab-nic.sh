#!/usr/bin/env bash
# Add a second NIC (UTM "Host" mode) to the existing Ubuntu VM for the lab
# segment. The VM must be shut down. The management NIC (Shared) is untouched.
#
#   ubuntu-add-lab-nic.sh          # report
#   ubuntu-add-lab-nic.sh --yes    # patch config.plist (keeps a backup)
#
# Adds one virtio-net-pci interface in Host mode with a fresh QEMU MAC. Inside
# the guest it becomes a second interface (e.g. enp0s2); lab/ansible assigns it
# the static lab IP. Re-running is a no-op once a Host NIC exists.
set -Eeuo pipefail
# shellcheck source=lab/scripts/_lab_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_lab_common.sh"

while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,13p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos
PB=/usr/libexec/PlistBuddy
cfg="$(vm_config "$UBUNTU_VM")" || true
[ -n "$cfg" ] || die "no config.plist for $UBUNTU_VM under $VMS_DIR"
vm_running "$UBUNTU_VM" && die "$UBUNTU_VM is running; shut it down first"

count="$("$PB" -c 'Print :Network' "$cfg" 2>/dev/null | grep -c 'Mode =' || true)"
host_present=0
for i in $(seq 0 $((count - 1))); do
  m="$("$PB" -c "Print :Network:$i:Mode" "$cfg" 2>/dev/null || true)"
  [ "$m" = Host ] && host_present=1
done
if [ "$host_present" -eq 1 ]; then
  pass "$UBUNTU_VM already has a Host-mode NIC"
  finish; exit
fi
info "$UBUNTU_VM currently has $count NIC(s); will add one Host-mode NIC"

confirm "add a Host-mode NIC to $UBUNTU_VM config.plist" || { finish; exit; }
cp -p "$cfg" "$cfg.bak-$(date -u +%Y%m%dT%H%M%SZ)"
mac="$(printf '52:54:00:%02X:%02X:%02X' $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))"
idx="$count"
"$PB" -c "Add :Network:$idx dict" \
      -c "Add :Network:$idx:Hardware string virtio-net-pci" \
      -c "Add :Network:$idx:Mode string Host" \
      -c "Add :Network:$idx:MacAddress string $mac" \
      -c "Add :Network:$idx:IsolateFromHost bool false" \
      -c "Add :Network:$idx:PortForward array" \
      "$cfg"
pass "added Host NIC ($mac) to $UBUNTU_VM"
info "boot the VM; the new interface gets the static lab IP via lab/ansible (ubuntu-lab role)"
finish
