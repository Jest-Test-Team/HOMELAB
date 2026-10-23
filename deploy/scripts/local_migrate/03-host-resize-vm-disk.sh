#!/usr/bin/env bash
# P0 (host): grow the VM's qcow2 disk to the planned size. VM must be shut down.
#
#   03-host-resize-vm-disk.sh                 # report only
#   03-host-resize-vm-disk.sh --yes           # resize to 80 GiB
#   03-host-resize-vm-disk.sh --size 96 --yes
#
# Before resizing it takes an APFS clone of the image (instant, no extra space
# until blocks change) next to the original: <image>.pre-resize-<UTC>.
# Grow only; shrinking is refused. Afterwards boot the VM and run
# 10-guest-bootstrap.sh --grow-root --yes so Ubuntu uses the new space.
# Needs qemu-img (brew install qemu).
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

SIZE_GIB="${EXPECTED_DISK_GIB:-80}"
while [ $# -gt 0 ]; do
  case "$1" in
    --size) SIZE_GIB="${2:?}"; shift 2 ;;
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,12p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
case "$SIZE_GIB" in ''|*[!0-9]*) die "--size must be a whole number of GiB" ;; esac
on_macos host
need_cmd qemu-img

bundles=()
while IFS= read -r b; do bundles+=("$b"); done < <(find "$HOMELAB_VOLUME/VMs" -maxdepth 1 -name '*.utm' -print 2>/dev/null)
[ "${#bundles[@]}" -eq 1 ] || die "expected exactly one .utm bundle under $HOMELAB_VOLUME/VMs, found ${#bundles[@]}"
bundle="${bundles[0]}"

images=()
while IFS= read -r i; do images+=("$i"); done < <(find "$bundle" -type f -name '*.qcow2' ! -name '*.pre-resize-*' -print)
[ "${#images[@]}" -eq 1 ] || die "expected exactly one .qcow2 in $bundle, found ${#images[@]}; resize it in UTM instead"
img="${images[0]}"

# Refuse if anything holds the image open (QEMU, UTM, a copy in progress).
if lsof -- "$img" >/dev/null 2>&1; then
  lsof -- "$img" || true
  die "the disk image is open; shut the VM down in UTM first"
fi
vm_name="$(basename "$bundle" .utm)"
UTMCTL=/Applications/UTM.app/Contents/MacOS/utmctl
if [ -x "$UTMCTL" ]; then
  state="$("$UTMCTL" status "$vm_name" 2>/dev/null || true)"
  case "$state" in
    stopped|"") ;;
    *) die "UTM reports '$vm_name' as $state; shut it down first" ;;
  esac
fi

# Top-level "virtual size" only: newer qemu-img also lists the child file
# node, indented, whose size is the allocated bytes, not the guest capacity.
virtual_bytes() { qemu-img info -- "$img" | sed -n 's/^virtual size: .*(\([0-9]*\) bytes).*/\1/p' | head -1; }
cur_bytes="$(virtual_bytes)"
[ -n "$cur_bytes" ] || die "could not read the virtual size of $img"
cur_gib=$((cur_bytes / 1024 / 1024 / 1024))
info "$(basename "$img"): virtual ${cur_gib} GiB, target ${SIZE_GIB} GiB"

if [ "$cur_gib" -ge "$SIZE_GIB" ]; then
  pass "disk is already ${cur_gib} GiB"
  finish; exit
fi

qemu-img check -q -- "$img" || die "qemu-img check reported problems; not resizing"
pass "qemu-img check clean"

if confirm "clone $(basename "$img") and resize it to ${SIZE_GIB} GiB"; then
  backup="$img.pre-resize-$(date -u +%Y%m%dT%H%M%SZ)"
  cp -c -- "$img" "$backup" || die "APFS clone failed; not resizing"
  pass "backup clone: $backup"
  qemu-img resize -- "$img" "${SIZE_GIB}G"
  new_bytes="$(virtual_bytes)"
  [ "$((new_bytes / 1024 / 1024 / 1024))" -eq "$SIZE_GIB" ] || die "resize did not reach ${SIZE_GIB} GiB"
  pass "disk is now ${SIZE_GIB} GiB"
  info "next: boot the VM, run 10-guest-bootstrap.sh --grow-root --yes; delete the clone once Ubuntu boots cleanly"
fi
finish
