#!/usr/bin/env bash
# P0 (host): keep the UTM host awake on AC power so the VM never pauses.
#
#   01-host-power.sh          # show the current AC settings
#   01-host-power.sh --yes    # sudo pmset -c sleep 0 disksleep 0 lowpowermode 0
#
# Display sleep is left alone. Battery settings are not changed.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,7p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos host

ac_value() {
  pmset -g custom | awk -v k="$1" '/^AC Power:/ {ac=1; next} /^[A-Za-z].*:$/ {ac=0} ac && $1 == k {print $2; exit}'
}

check() {
  local bad=0 k v
  for k in sleep disksleep lowpowermode; do
    v="$(ac_value "$k")"
    if [ "${v:-0}" = 0 ]; then pass "AC power: $k=${v:-unset}"; else warn "AC power: $k=$v"; bad=1; fi
  done
  return "$bad"
}

if check; then
  finish
  exit
fi
if confirm "sudo pmset -c sleep 0 disksleep 0 lowpowermode 0"; then
  sudo pmset -c sleep 0 disksleep 0 lowpowermode 0
  HOMELAB_WARNS=0
  check || fail "AC power settings did not take effect"
fi
finish
