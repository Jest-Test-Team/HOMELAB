#!/usr/bin/env bash
# P0 (host): let this terminal control UTM through utmctl.
#
#   04-host-utm-access.sh          # test utmctl; open the Automation pane if denied
#
# macOS only lets a person grant Automation permission, so this script opens
# System Settings and retests. Run it from the Mac's desktop session, not SSH.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

case "${1:-}" in -h|--help) sed -n '2,6p' "$0"; exit 0 ;; esac
on_macos host

UTMCTL=/Applications/UTM.app/Contents/MacOS/utmctl
[ -x "$UTMCTL" ] || die "utmctl not found; is UTM installed in /Applications?"
[ -z "${SSH_CONNECTION:-}" ] || die "utmctl does not work over SSH; run this on the host's desktop"

try() { "$UTMCTL" list 2>&1; }
out="$(try || true)"
if ! printf '%s' "$out" | grep -q -- '-1743'; then
  printf '%s\n' "$out"
  pass "utmctl works"
  finish; exit
fi

warn "utmctl denied (OSStatus -1743)"
info "opening System Settings > Privacy & Security > Automation."
info "Enable 'UTM' under your terminal app (Terminal, iTerm, VS Code...)."
info "If your terminal is not listed yet, accept the prompt macOS shows on the next utmctl call."
open "x-apple.systempreferences:com.apple.preference.security?Privacy_Automation" || true
printf 'Press Enter after granting access... '
read -r _
out="$(try || true)"
printf '%s\n' "$out"
if printf '%s' "$out" | grep -q -- '-1743'; then
  fail "utmctl still denied; quit and reopen the terminal app, then rerun"
else
  pass "utmctl works"
fi
finish
