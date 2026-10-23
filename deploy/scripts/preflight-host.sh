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

# Guest capacity of a disk image. Raw images are sparse, so their apparent
# size is the capacity. qcow2 files grow as written; the capacity is the
# big-endian uint64 at byte 24 of the header (magic "QFI\xfb").
virtual_bytes() {
  local img="$1" magic n=0 byte
  magic="$(od -An -tx1 -N4 "$img" | tr -d ' \n')"
  if [ "$magic" = 514649fb ]; then
    for byte in $(od -An -tu1 -j24 -N8 "$img"); do n=$(( n * 256 + byte )); done
    echo "$n"
  else
    stat -f %z "$img"
  fi
}

# plutil prints its errors on stdout, so only trust output on success.
plist_get() { local v; v="$(plutil -extract "$2" raw -o - "$1" 2>/dev/null)" && echo "$v" || echo unknown; }

for b in ${bundles[@]+"${bundles[@]}"}; do  # bash 3.2-safe empty-array expansion
  cfg="$b/config.plist"
  if [ -f "$cfg" ]; then
    backend="$(plist_get "$cfg" Backend)"
    info "$(basename "$b"): UTM backend=$backend cpus=$(plist_get "$cfg" System.CPUCount) memory_mib=$(plist_get "$cfg" System.MemorySize)"
    [ "$backend" = Apple ] || warn "$(basename "$b") uses the '$backend' backend; the plan assumes Apple Virtualization (see implementation.md §14)"
  fi
  found_big=0
  while IFS= read -r img; do
    bytes="$(virtual_bytes "$img")"
    gib=$((bytes / 1024 / 1024 / 1024))
    alloc="$(du -sh "$img" | cut -f1)"
    info "disk image $(basename "$img"): virtual ${gib} GiB, allocated ${alloc}"
    [ "$gib" -ge "$((EXPECTED_GIB - 1))" ] && found_big=1
  done < <(find "$b" -type f \( -name '*.img' -o -name '*.qcow2' -o -name '*.raw' \) -print)
  if [ "$found_big" -eq 1 ]; then
    pass "GUEST-01(host) $(basename "$b") has a ~${EXPECTED_GIB} GiB virtual disk"
  else
    warn "GUEST-01(host) no ~${EXPECTED_GIB} GiB virtual disk in $(basename "$b")"
  fi
done

# VM state (utmctl is bundled with UTM). It needs a logged-in GUI session and
# Automation permission for the calling terminal app.
UTMCTL=/Applications/UTM.app/Contents/MacOS/utmctl
if [ -x "$UTMCTL" ]; then
  out="$("$UTMCTL" list 2>&1 || true)"
  printf '\n$ utmctl list\n%s\n' "$out"
  if printf '%s' "$out" | grep -q -- '-1743'; then
    warn "utmctl denied (OSStatus -1743): allow your terminal app under System Settings > Privacy & Security > Automation > UTM, and run from a local GUI session, not SSH"
  fi
else
  warn "utmctl not found; is UTM installed in /Applications?"
fi

# Physical disk behind the APFS volume (the USB device's BSD name).
phys="$(diskutil info "$VOLUME" | awk -F': *' '/APFS Physical Store/ {print $2; exit}')"
[ -n "$phys" ] || phys="$(diskutil info "$VOLUME" | awk -F': *' '/Part of Whole/ {print $2; exit}')"
whole="$(diskutil info "$phys" 2>/dev/null | awk -F': *' '/Part of Whole/ {print $2; exit}')"
whole="${whole:-$phys}"
info "physical disk for $VOLUME: /dev/$whole"

# STOR-03 inputs: the link speed of THIS disk's USB device (the last Speed
# line before its "BSD Name: <disk>" in the report), not any device on the bus.
usb="$(system_profiler SPUSBHostDataType 2>/dev/null; system_profiler SPUSBDataType 2>/dev/null)"
speed="$(printf '%s\n' "$usb" | awk -v d="$whole" '
  /Speed:/ { last = $0 }
  $0 ~ ("BSD Name: " d "$") { print last; exit }' | sed 's/^ *//')"
case "$speed" in
  *"5 Gb"*|*"10 Gb"*|*"20 Gb"*|*Super*) pass "STOR-03 /dev/$whole USB link: $speed" ;;
  *480*) warn "STOR-03 /dev/$whole is on a USB 2 (480 Mb/s) link: $speed. Try another cable/port" ;;
  "") warn "STOR-03 USB speed for /dev/$whole not found; run: system_profiler SPUSBHostDataType | grep -B40 'BSD Name: $whole'" ;;
  *) info "STOR-03 /dev/$whole USB link: $speed" ;;
esac
info "SMART status through the USB-SATA bridge: UNKNOWN (unsupported), not healthy"

# Storage errors from the kernel and disk arbitration only. App-level SQLite
# messages such as geod's "disk I/O error" are not storage faults.
ioerr="$(log show --last "$LOG_WINDOW" --style compact --predicate "
  (process == \"kernel\" AND (eventMessage CONTAINS[c] \"I/O error\"
     OR eventMessage CONTAINS[c] \"media is not present\"
     OR (eventMessage CONTAINS \"$whole\" AND eventMessage CONTAINS[c] \"error\")))
  OR (process == \"diskarbitrationd\" AND eventMessage CONTAINS[c] \"eject\")
  OR eventMessage CONTAINS[c] \"not ejected properly\"" \
  2>/dev/null | grep -v '^Timestamp' | head -20 || true)"
if [ -n "$ioerr" ]; then
  fail "STOR-03 storage errors in the last ${LOG_WINDOW}:"; printf '%s\n' "$ioerr" >&2
else
  pass "STOR-03 no kernel/disk-arbitration storage errors in the last ${LOG_WINDOW}"
fi

# Sleep settings on AC power: the VM stops when the host sleeps, and disk
# sleep spins the external HDD down.
show pmset -g custom
ac="$(pmset -g custom | awk '/^AC Power:/ {on=1; next} /^[A-Za-z].*:$/ {on=0} on')"
for key in sleep disksleep lowpowermode; do
  v="$(printf '%s\n' "$ac" | awk -v k="$key" '$1 == k {print $2}')"
  if [ -n "$v" ] && [ "$v" != 0 ]; then
    warn "AC power: $key=$v; for an always-on host run: sudo pmset -c $key 0"
  fi
done

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
