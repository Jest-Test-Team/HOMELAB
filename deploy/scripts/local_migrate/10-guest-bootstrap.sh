#!/usr/bin/env bash
# P1 (guest, UTM console): base packages, OpenSSH, optional root grow, preflight.
#
#   10-guest-bootstrap.sh                    # read-only report + preflight-guest
#   10-guest-bootstrap.sh --yes              # install packages, enable ssh
#   10-guest-bootstrap.sh --grow-root --yes  # also grow root fs to fill the disk
#
# Get the repo into the guest first (it is public, no key needed):
#   sudo apt update && sudo apt install -y git
#   git clone https://github.com/Jest-Test-Team/HOMELAB.git ~/HOMELAB
#
# --grow-root extends the root partition (growpart), then the LVM PV and root
# LV, then the filesystem. Use it after 03-host-resize-vm-disk.sh, or when the
# Ubuntu installer left LVM space unallocated.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

GROW=0
while [ $# -gt 0 ]; do
  case "$1" in
    --grow-root) GROW=1; shift ;;
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,15p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest
[ "$(id -u)" -ne 0 ] || die "run as your normal VM user (it uses sudo), not root"

PKGS=(openssh-server git curl ca-certificates jq openssl cloud-guest-utils)
missing=()
for p in "${PKGS[@]}"; do
  dpkg-query -W -f='${Status}' "$p" 2>/dev/null | grep -q 'install ok installed' || missing+=("$p")
done
if [ "${#missing[@]}" -eq 0 ]; then
  pass "packages present: ${PKGS[*]}"
elif confirm "apt install ${missing[*]}"; then
  sudo apt-get update
  sudo apt-get install -y "${missing[@]}"
fi

if systemctl is-enabled --quiet ssh 2>/dev/null && systemctl is-active --quiet ssh 2>/dev/null; then
  pass "ssh enabled and running"
elif dpkg-query -W openssh-server >/dev/null 2>&1 && confirm "systemctl enable --now ssh"; then
  sudo systemctl enable --now ssh
fi

grow_root() {
  local src fstype pv part disk partnum
  src="$(findmnt -no SOURCE /)"
  fstype="$(findmnt -no FSTYPE /)"
  if [ "$(lsblk -no TYPE "$src")" = lvm ]; then
    pv="$(sudo pvs --noheadings -o pv_name -S "vg_name=$(sudo lvs --noheadings -o vg_name "$src" | tr -d ' ')" | tr -d ' ' | head -1)"
    part="$pv"
  else
    part="$src"
  fi
  disk="/dev/$(lsblk -no PKNAME "$part" | head -1)"
  partnum="$(cat "/sys/class/block/$(basename "$part")/partition")"
  info "root: $src ($fstype) on partition $part = $disk #$partnum"
  confirm "growpart $disk $partnum, then extend ${pv:+PV/LV and }the $fstype filesystem" || return 0
  # growpart exits 1 with NOCHANGE when the partition already fills the disk.
  sudo growpart "$disk" "$partnum" || info "growpart: no change"
  if [ -n "${pv:-}" ]; then
    sudo pvresize "$pv"
    sudo lvextend -r -l +100%FREE "$src" || info "lvextend: no free extents"
  else
    case "$fstype" in
      ext4) sudo resize2fs "$src" ;;
      xfs) sudo xfs_growfs / ;;
      *) die "unsupported root filesystem $fstype; grow it by hand" ;;
    esac
  fi
  df -h /
}
[ "$GROW" -eq 0 ] || grow_root

show id -un
show ip -4 -br addr
info "note the user and IPv4 above for 11-devmac-ssh-key.sh (Shared mode: 192.168.64.x)"

"$SCRIPTS_DIR/preflight-guest.sh" || true
finish
