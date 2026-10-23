# shellcheck shell=bash
# Shared config + helpers for lab/scripts/*.sh. Source, do not execute.
#
# One place for the lab's addressing and the external-drive layout. Everything
# heavy (VM bundles, disks, ISOs) lives on the external drive, never the Mac.

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$LAB_DIR/../.." && pwd)"
# Reuse the deploy logging helpers (pass/warn/fail/info/die/need_cmd/finish).
# shellcheck source=deploy/scripts/lib.sh
. "$REPO_ROOT/deploy/scripts/lib.sh"

# --- external drive layout ---------------------------------------------------
HOMELAB_VOLUME="${HOMELAB_VOLUME:-/Volumes/HOMELAB}"
VMS_DIR="${VMS_DIR:-$HOMELAB_VOLUME/VMs}"
ISO_DIR="${ISO_DIR:-$HOMELAB_VOLUME/ISO}"
IMAGES_DIR="${IMAGES_DIR:-$HOMELAB_VOLUME/Images}"
BACKUPS_DIR="${BACKUPS_DIR:-$HOMELAB_VOLUME/Backups}"

# --- lab network (isolated L2, static addressing, no gateway) ----------------
LAB_SUBNET="${LAB_SUBNET:-10.66.6.0/24}"
LAB_PREFIX="${LAB_PREFIX:-24}"
LAB_UBUNTU_IP="${LAB_UBUNTU_IP:-10.66.6.10}"
LAB_KALI_IP="${LAB_KALI_IP:-10.66.6.20}"

# Authorized test surface: the only ports Kali may reach on the Ubuntu lab IP.
API_LAB_PORT="${API_LAB_PORT:-30080}"
MCP_LAB_PORT="${MCP_LAB_PORT:-30081}"

# VM identities
UBUNTU_VM="${UBUNTU_VM:-Linux-homelab}"
KALI_VM="${KALI_VM:-Kali-Red}"
KALI_VCPU="${KALI_VCPU:-2}"
KALI_MEM_MIB="${KALI_MEM_MIB:-3072}"
KALI_DISK_GIB="${KALI_DISK_GIB:-40}"

UTMCTL="${UTMCTL:-/Applications/UTM.app/Contents/MacOS/utmctl}"
YES=0

on_macos() { [ "$(uname -s)" = Darwin ] || die "run this on the macOS UTM host"; }

confirm() {
  if [ "$YES" -eq 1 ]; then info "applying: $*"; return 0; fi
  info "would apply: $*  (rerun with --yes)"; return 1
}

# Path to a VM's config.plist, or empty if the bundle is not found.
vm_config() {
  local b="$VMS_DIR/$1.utm"
  [ -f "$b/config.plist" ] && printf '%s\n' "$b/config.plist"
}

vm_running() {
  [ -x "$UTMCTL" ] || return 1
  [ "$("$UTMCTL" status "$1" 2>/dev/null)" = started ]
}
