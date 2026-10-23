#!/usr/bin/env bash
# Create the Kali "Red" VM on the external drive, with a SINGLE Host-mode NIC
# (lab segment only: no Shared, so no internet / LAN / Tailscale by default).
#
#   make-kali-vm.sh            # report the plan
#   make-kali-vm.sh --yes      # stage disk + ISO and build the .utm bundle
#
# Everything lives on the external drive:
#   bundle  $VMS_DIR/<KALI_VM>.utm
#   disk    .../Data/<uuid>.qcow2   (KALI_DISK_GIB, default 40)
#   ISO     copied from $ISO_DIR    (APFS clone; set KALI_ISO or drop one *.iso in ISO/)
#
# The bundle is cloned from the known-good Ubuntu config.plist and patched
# (name/UUID, 2 vCPU / 3 GiB, one Host NIC, Kali ISO as CD, fresh disk). After
# it is built, open it in UTM to install Kali, then run lab/ansible (kali role).
set -Eeuo pipefail
# shellcheck source=lab/scripts/_lab_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_lab_common.sh"

KALI_ISO="${KALI_ISO:-}"
while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    --iso) KALI_ISO="${2:?}"; shift 2 ;;
    -h|--help) sed -n '2,20p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos
need_cmd qemu-img
PB=/usr/libexec/PlistBuddy
template="$(vm_config "$UBUNTU_VM")" || true
[ -n "$template" ] || die "need $UBUNTU_VM's config.plist as a template under $VMS_DIR"

# Locate the Kali ISO on the external drive.
if [ -z "$KALI_ISO" ]; then
  KALI_ISO="$(find "$ISO_DIR" -maxdepth 1 -iname 'kali*.iso' | head -1 || true)"
fi
[ -n "$KALI_ISO" ] && [ -f "$KALI_ISO" ] || die "no Kali ISO found; download the arm64 installer into $ISO_DIR or pass --iso PATH"
case "$KALI_ISO" in "$HOMELAB_VOLUME"/*) : ;; *) warn "ISO $KALI_ISO is not on the external drive" ;; esac
info "ISO: $KALI_ISO"

bundle="$VMS_DIR/$KALI_VM.utm"
[ -e "$bundle" ] && die "$bundle already exists; remove it first to recreate"
disk_uuid="$(uuidgen)"; vm_uuid="$(uuidgen)"
iso_name="$(basename "$KALI_ISO")"
info "plan: $bundle  cpu=$KALI_VCPU mem=${KALI_MEM_MIB}MiB disk=${KALI_DISK_GIB}GiB  NIC=Host-only"

confirm "create the $KALI_VM bundle on the external drive" || { finish; exit; }

data="$bundle/Data"
mkdir -p "$data"
qemu-img create -f qcow2 "$data/$disk_uuid.qcow2" "${KALI_DISK_GIB}G" >/dev/null
pass "created disk $data/$disk_uuid.qcow2 (${KALI_DISK_GIB} GiB, sparse)"
cp -c "$KALI_ISO" "$data/$iso_name" 2>/dev/null || cp "$KALI_ISO" "$data/$iso_name"
pass "staged ISO into the bundle"

cfg="$bundle/config.plist"
cp "$template" "$cfg"
# Identity
"$PB" -c "Set :Information:Name $KALI_VM" -c "Set :Information:UUID $vm_uuid" "$cfg"
# Resources
"$PB" -c "Set :System:CPUCount $KALI_VCPU" -c "Set :System:MemorySize $KALI_MEM_MIB" "$cfg"
# Network: collapse to a single Host-mode NIC
while "$PB" -c 'Print :Network:1' "$cfg" >/dev/null 2>&1; do "$PB" -c 'Delete :Network:1' "$cfg"; done
mac="$(printf '52:54:00:%02X:%02X:%02X' $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))"
"$PB" -c 'Set :Network:0:Mode Host' -c "Set :Network:0:MacAddress $mac" "$cfg"
"$PB" -c 'Set :Network:0:IsolateFromHost false' "$cfg" 2>/dev/null || true
# Drives: CD (Kali ISO) + fresh VirtIO disk
"$PB" -c 'Add :Drive:0:ImageName string '"$iso_name" "$cfg" 2>/dev/null \
  || "$PB" -c 'Set :Drive:0:ImageName '"$iso_name" "$cfg"
"$PB" -c "Set :Drive:1:Identifier $disk_uuid" -c "Set :Drive:1:ImageName $disk_uuid.qcow2" "$cfg"
plutil -lint "$cfg" >/dev/null || die "patched config.plist failed plutil -lint"
pass "wrote and linted $cfg (Host NIC $mac, disk $disk_uuid)"

cat <<NEXT

Built $bundle on the external drive. Next:
  1. In UTM: File > Open... this bundle (or it may already appear), then start it
     and install Kali. If UTM rejects the hand-built config, create a new VM in
     UTM instead and point its disk at:
       $data/$disk_uuid.qcow2
     with the ISO $iso_name, 2 vCPU / 3 GiB, and ONE network set to "Host".
  2. After install, assign the static lab IP with lab/ansible (kali role), which
     also installs nftables (default-drop egress) and the Phase-1 tools.
  3. Updates need internet: lab/scripts/kali-maintenance-nic.sh on  (then off).
  4. Gate: lab/scripts/verify-lab-isolation.sh must pass before any testing.
NEXT
finish
