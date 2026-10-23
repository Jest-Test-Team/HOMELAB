#!/usr/bin/env bash
# Temporarily give Kali internet (a Shared NIC) for apt/tool updates, then take
# it away. Off is the safe default; isolation assumes Kali has ONLY the Host NIC.
#
#   kali-maintenance-nic.sh status
#   kali-maintenance-nic.sh on --yes     # attach a Shared NIC (VM shut down)
#   kali-maintenance-nic.sh off --yes    # remove it again
#
# After `on`, boot Kali, update, shut down, then run `off` and re-verify
# isolation. Leaving the Shared NIC attached breaks the lab's isolation.
set -Eeuo pipefail
# shellcheck source=lab/scripts/_lab_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_lab_common.sh"

ACTION="${1:-status}"; [ $# -gt 0 ] && shift
while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,13p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos
PB=/usr/libexec/PlistBuddy
cfg="$(vm_config "$KALI_VM")" || true
[ -n "$cfg" ] || die "no config.plist for $KALI_VM; create it with make-kali-vm.sh"

shared_index() {
  local n i m
  n="$("$PB" -c 'Print :Network' "$cfg" 2>/dev/null | grep -c 'Mode =' || true)"
  for i in $(seq 0 $((n - 1))); do
    m="$("$PB" -c "Print :Network:$i:Mode" "$cfg" 2>/dev/null || true)"
    [ "$m" = Shared ] && { echo "$i"; return; }
  done
  echo -1
}

case "$ACTION" in
  status)
    idx="$(shared_index)"
    [ "$idx" -ge 0 ] && warn "$KALI_VM HAS a Shared (internet) NIC at index $idx — NOT isolated" \
                     || pass "$KALI_VM has no Shared NIC (isolated)"
    finish ;;
  on)
    [ "$(shared_index)" -lt 0 ] || { pass "Shared NIC already present"; finish; exit; }
    vm_running "$KALI_VM" && die "$KALI_VM is running; shut it down first"
    confirm "attach a temporary Shared NIC to $KALI_VM" || { finish; exit; }
    cp -p "$cfg" "$cfg.bak-$(date -u +%Y%m%dT%H%M%SZ)"
    n="$("$PB" -c 'Print :Network' "$cfg" 2>/dev/null | grep -c 'Mode =' || true)"
    mac="$(printf '52:54:00:%02X:%02X:%02X' $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))"
    "$PB" -c "Add :Network:$n dict" \
          -c "Add :Network:$n:Hardware string virtio-net-pci" \
          -c "Add :Network:$n:Mode string Shared" \
          -c "Add :Network:$n:MacAddress string $mac" \
          -c "Add :Network:$n:IsolateFromHost bool false" \
          -c "Add :Network:$n:PortForward array" "$cfg"
    plutil -lint "$cfg" >/dev/null || die "config.plist failed lint"
    pass "attached Shared NIC; boot Kali, update, shut down, then run: $0 off --yes" ;;
  off)
    idx="$(shared_index)"
    [ "$idx" -ge 0 ] || { pass "no Shared NIC to remove"; finish; exit; }
    vm_running "$KALI_VM" && die "$KALI_VM is running; shut it down first"
    confirm "remove the Shared NIC from $KALI_VM (restore isolation)" || { finish; exit; }
    cp -p "$cfg" "$cfg.bak-$(date -u +%Y%m%dT%H%M%SZ)"
    "$PB" -c "Delete :Network:$idx" "$cfg"
    plutil -lint "$cfg" >/dev/null || die "config.plist failed lint"
    pass "removed Shared NIC; re-run lab/scripts/verify-lab-isolation.sh" ;;
  *) die "usage: $0 status|on|off [--yes]" ;;
esac
finish
