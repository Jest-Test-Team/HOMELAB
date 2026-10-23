#!/usr/bin/env bash
# P1 (guest): turn off password and root SSH login (configure-ssh.sh apply).
#
#   14-guest-harden-ssh.sh          # configure-ssh.sh check only
#   14-guest-harden-ssh.sh --yes    # apply, after you confirm the UTM console
#
# Do this only after 13-devmac-ssh-config.sh shows key login working, and with
# the UTM console logged in as a way back. Keep the current SSH session open
# and run 15-devmac-verify-ssh.sh from a second terminal.
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
user="$(id -un)"

"$SCRIPTS_DIR/configure-ssh.sh" check --user "$user"
confirm "configure-ssh.sh apply --user $user" || exit 0

printf 'Is a UTM console session logged in as %s right now? Type "yes": ' "$user"
read -r ans
[ "$ans" = yes ] || die "log in at the UTM console first; it is the way back if SSH breaks"
"$SCRIPTS_DIR/configure-ssh.sh" apply --user "$user" --console-confirmed
info "keep this session open; run 15-devmac-verify-ssh.sh from a second terminal"
