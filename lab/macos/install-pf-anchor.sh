#!/usr/bin/env bash
# Load (or verify) the macOS pf anchor that isolates the lab subnet on the host.
#
#   install-pf-anchor.sh verify      # show whether the anchor is loaded
#   install-pf-anchor.sh load --yes  # install + load the anchor (needs sudo)
#   install-pf-anchor.sh unload --yes
#
# This loads the anchor into the running pf. To persist across reboot, add this
# line to /etc/pf.conf (the script prints it): anchor "homelab-lab".
set -Eeuo pipefail
# shellcheck source=lab/scripts/_lab_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/../scripts/_lab_common.sh"

ACTION="${1:-verify}"; [ $# -gt 0 ] && shift
while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,12p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos

ANCHOR=homelab-lab
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/pf-lab-anchor.conf"
DST=/etc/pf.anchors/$ANCHOR

render() { sed "s#<LAB_SUBNET>#$LAB_SUBNET#g" "$SRC"; }

case "$ACTION" in
  verify)
    if sudo pfctl -a "$ANCHOR" -s rules 2>/dev/null | grep -q "$LAB_SUBNET"; then
      pass "pf anchor $ANCHOR loaded for $LAB_SUBNET"
      sudo pfctl -a "$ANCHOR" -s rules 2>/dev/null | sed 's/^/    /'
    else
      warn "pf anchor $ANCHOR not loaded; run: $0 load --yes"
    fi
    finish ;;
  load)
    confirm "install $DST and load the pf anchor for $LAB_SUBNET" || { finish; exit; }
    render | sudo tee "$DST" >/dev/null
    sudo pfctl -a "$ANCHOR" -f "$DST"
    sudo pfctl -e 2>/dev/null || true   # enable pf if not already
    pass "loaded pf anchor $ANCHOR"
    info "to persist across reboot, add to /etc/pf.conf:  anchor \"$ANCHOR\""
    info "and:  load anchor \"$ANCHOR\" from \"$DST\"" ;;
  unload)
    confirm "flush the pf anchor $ANCHOR" || { finish; exit; }
    sudo pfctl -a "$ANCHOR" -F rules 2>/dev/null || true
    pass "flushed pf anchor $ANCHOR" ;;
  *) die "usage: $0 verify|load|unload [--yes]" ;;
esac
finish
