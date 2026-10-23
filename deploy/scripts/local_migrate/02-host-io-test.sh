#!/usr/bin/env bash
# P0 (host): STOR-03 write/read/verify test on the USB drive.
#
#   02-host-io-test.sh [SIZE_MIB]     # default 2048
#
# Wraps preflight-host.sh --io-test, which only writes and deletes its own
# temp file. Close the VM first if you want an uncontended number.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

case "${1:-}" in -h|--help) sed -n '2,7p' "$0"; exit 0 ;; esac
SIZE="${1:-2048}"
case "$SIZE" in ''|*[!0-9]*) die "size must be a number of MiB" ;; esac
on_macos host

exec "$SCRIPTS_DIR/preflight-host.sh" --io-test "$SIZE"
