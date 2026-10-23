#!/usr/bin/env bash
# P0 host preflight for the macOS UTM host (M1 Pro). Read-only by default.
#
#   preflight-host.sh               # inspection only
#   preflight-host.sh --io-test 2048  # also write/read/verify a 2048 MiB temp file
#
# The I/O test only creates and deletes its own dedicated temp file. It never
# touches partitions, the VM bundle, or existing data.
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

VOLUME="${HOMELAB_VOLUME:-/Volumes/HOMELAB}"
VM_DIR="$VOLUME/VMs"
EXPECTED_GIB="${EXPECTED_DISK_GIB:-80}"
LOG_WINDOW="${LOG_WINDOW:-2h}"   # unified-log search window; 24h can take minutes
IO_TEST_MIB=0

while [ $# -gt 0 ]; do
  case "$1" in
    --io-test) IO_TEST_MIB="${2:?--io-test needs a size in MiB}"; shift 2 ;;
    -h|--help) sed -n '2,9p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done

[ "$(uname -s)" = Darwin ] || die "run this on the macOS UTM host"

show sw_vers
show uname -m
system_profiler SPHardwareDataType 2>/dev/null | grep -E 'Chip|Memory' || true

# STOR-01: external volume mounted, APFS, external location.
if ! diskutil info "$VOLUME" >/dev/null 2>&1; then
  fail "STOR-01 $VOLUME is not mounted; do not start the VM"
  finish; exit 1
fi
dinfo="$(diskutil info "$VOLUME")"
printf '%s\n' "$dinfo" | grep -E 'Volume Name|Mounted|Mount Point|Device Location|File System Personality|Protocol' || true
if printf '%s\n' "$dinfo" | grep -qE 'Mounted:[[:space:]]+Yes' \
   && printf '%s\n' "$dinfo" | grep -qE 'File System Personality:[[:space:]]+APFS' \
   && printf '%s\n' "$dinfo" | grep -qE 'Device Location:[[:space:]]+External'; then
  pass "STOR-01 $VOLUME mounted, APFS, external"
else
  fail "STOR-01 $VOLUME is not an external, mounted APFS volume"
fi
show df -h "$VOLUME"

# STOR-02: VM bundle location.
stray="$(find "$VOLUME" -maxdepth 1 -name '*.utm' -print 2>/dev/null || true)"
if [ -n "$stray" ]; then
  warn "STOR-02 bundle(s) at volume root, move into $VM_DIR with UTM while the VM is SHUT DOWN: $stray"
fi
bundles=()
if [ -d "$VM_DIR" ]; then
  while IFS= read -r b; do bundles+=("$b"); done < <(find "$VM_DIR" -maxdepth 1 -name '*.utm' -print)
fi
if [ "${#bundles[@]}" -gt 0 ]; then
  pass "STOR-02 found ${#bundles[@]} bundle(s) under $VM_DIR"
else
  fail "STOR-02 no .utm bundle under $VM_DIR"
fi

internal="$(find "$HOME/Library/Containers/com.utmapp.UTM/Data/Documents" -maxdepth 1 -name '*.utm' -print 2>/dev/null || true)"
[ -z "$internal" ] || warn "STOR-02 bundle(s) still on the internal SSD: $internal"

# Virtual disk size: apparent size of a sparse image is its guest capacity;
# allocated size (du) can be far smaller and is not evidence of a missing disk.
for b in ${bundles[@]+"${bundles[@]}"}; do  # bash 3.2-safe empty-array expansion
  while IFS= read -r img; do
    bytes="$(stat -f %z "$img")"
    gib=$((bytes / 1024 / 1024 / 1024))
    alloc="$(du -sh "$img" | cut -f1)"
    info "disk image $(basename "$img"): virtual ${gib} GiB, allocated ${alloc}"
    if [ "$gib" -ge "$((EXPECTED_GIB - 1))" ]; then
      pass "GUEST-01(host) $(basename "$b") has a ~${EXPECTED_GIB} GiB virtual disk"
    fi
  done < <(find "$b" -type f \( -name '*.img' -o -name '*.qcow2' -o -name '*.raw' \) -print)
done

# VM state (utmctl is bundled with UTM).
UTMCTL=/Applications/UTM.app/Contents/MacOS/utmctl
if [ -x "$UTMCTL" ]; then
  show "$UTMCTL" version
  show "$UTMCTL" list
else
  warn "utmctl not found; is UTM installed in /Applications?"
fi

# STOR-03 inputs: USB negotiated speed and recent I/O errors.
usb="$(system_profiler SPUSBHostDataType 2>/dev/null || system_profiler SPUSBDataType 2>/dev/null || true)"
if printf '%s\n' "$usb" | grep -qiE 'Speed:.*(5 Gb|10 Gb|Super)'; then
  pass "STOR-03 a USB 3.x (SuperSpeed) link is present"
elif printf '%s\n' "$usb" | grep -qiE 'Speed:.*480'; then
  warn "STOR-03 only a 480 Mb/s (USB 2) link was seen; the dock may have negotiated USB 2"
else
  warn "STOR-03 USB speed not reported; check System Information > USB manually"
fi
info "SMART status through the USB-SATA bridge: UNKNOWN (unsupported), not healthy"

ioerr="$(log show --last "$LOG_WINDOW" --style compact \
  --predicate 'eventMessage CONTAINS[c] "I/O error" OR eventMessage CONTAINS[c] "disk ejected" OR eventMessage CONTAINS[c] "not ejected properly"' \
  2>/dev/null | grep -v '^Timestamp' | head -20 || true)"
if [ -n "$ioerr" ]; then
  fail "STOR-03 storage errors in the last ${LOG_WINDOW}:"; printf '%s\n' "$ioerr" >&2
else
  pass "STOR-03 no I/O error / eject messages in the last ${LOG_WINDOW} of unified log"
fi

# Sleep settings: VM services stop if the host sleeps.
show pmset -g custom

# Optional controlled write/read/verify test on a dedicated temp file.
if [ "$IO_TEST_MIB" -gt 0 ]; then
  avail_kib="$(df -k "$VOLUME" | awk 'NR==2 {print $4}')"
  [ "$avail_kib" -gt $((IO_TEST_MIB * 1024 * 2)) ] || die "not enough free space for a ${IO_TEST_MIB} MiB test"
  tmp="$(mktemp "$VOLUME/.homelab-iotest.XXXXXX")"
  trap 'rm -f "$tmp"' EXIT
  info "writing ${IO_TEST_MIB} MiB to $tmp"
  start=$(date +%s)
  # Hash the stream as it is written, then hash what the disk returns.
  w_sum="$(dd if=/dev/urandom bs=1m count="$IO_TEST_MIB" 2>/dev/null | tee "$tmp" | shasum -a 256 | cut -d' ' -f1)"
  sync
  mid=$(date +%s)
  r_sum="$(shasum -a 256 "$tmp" | cut -d' ' -f1)"
  end=$(date +%s)
  info "write+hash $((mid - start))s, re-read+hash $((end - mid))s (re-read may be served from cache)"
  if [ "$w_sum" = "$r_sum" ]; then
    pass "STOR-03 checksum stable across re-read ($r_sum)"
  else
    fail "STOR-03 checksum mismatch: $w_sum vs $r_sum. Stop and inspect the drive"
  fi
  rm -f "$tmp"; trap - EXIT
fi

finish
