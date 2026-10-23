#!/usr/bin/env bash
# P0/P1/P3 guest preflight for the Ubuntu ARM64 VM. Read-only; safe to rerun.
#
#   preflight-guest.sh            # resources, storage, network, services
#   preflight-guest.sh --k3s      # also check k3s prerequisites and cluster state
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

EXPECTED_CPUS="${EXPECTED_CPUS:-4}"
EXPECTED_DISK_GIB="${EXPECTED_DISK_GIB:-80}"
MIN_FREE_GIB="${MIN_FREE_GIB:-10}"
CHECK_K3S=0
[ "${1:-}" = "--k3s" ] && CHECK_K3S=1

[ "$(uname -s)" = Linux ] || die "run this inside the Ubuntu guest"

# GUEST-01
arch="$(uname -m)"
[ "$arch" = aarch64 ] && pass "GUEST-01 arch aarch64" || fail "GUEST-01 arch is $arch, expected aarch64"

# shellcheck source=/dev/null
. /etc/os-release
case "$VERSION_ID" in
  24.04*) pass "GUEST-01 $PRETTY_NAME" ;;
  *) warn "GUEST-01 $PRETTY_NAME (plan targets Ubuntu 24.04 LTS)" ;;
esac

cpus="$(nproc)"
[ "$cpus" -eq "$EXPECTED_CPUS" ] && pass "GUEST-01 ${cpus} vCPU" || warn "GUEST-01 ${cpus} vCPU, expected ${EXPECTED_CPUS}"

mem_mib="$(awk '/MemTotal/ {print int($2/1024)}' /proc/meminfo)"
if [ "$mem_mib" -ge 5500 ] && [ "$mem_mib" -le 6400 ]; then
  pass "GUEST-01 ${mem_mib} MiB RAM (~6 GiB)"
else
  warn "GUEST-01 ${mem_mib} MiB RAM, expected ~6 GiB"
fi

root_src="$(findmnt -no SOURCE /)"
disk="$(lsblk -no PKNAME "$root_src" 2>/dev/null | tail -1 || true)"
# LVM roots need one more hop to the physical disk.
while [ -n "$disk" ] && [ "$(lsblk -dno TYPE "/dev/$disk" 2>/dev/null)" != disk ]; do
  disk="$(lsblk -no PKNAME "/dev/$disk" | tail -1)"
done
if [ -n "$disk" ]; then
  size_gib=$(( $(lsblk -dbno SIZE "/dev/$disk") / 1024 / 1024 / 1024 ))
  if [ "$size_gib" -ge $((EXPECTED_DISK_GIB - 2)) ]; then
    pass "GUEST-01 /dev/$disk is ${size_gib} GiB"
  else
    warn "GUEST-01 /dev/$disk is ${size_gib} GiB, expected ~${EXPECTED_DISK_GIB}"
  fi
fi
show lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS
show findmnt -no SOURCE,FSTYPE,OPTIONS /

# Ubuntu's installer often gives the root LV only half the disk.
free_gib="$(df -BG --output=avail / | tail -1 | tr -dc 0-9)"
[ "$free_gib" -ge "$MIN_FREE_GIB" ] && pass "root fs ${free_gib} GiB free" || fail "root fs only ${free_gib} GiB free"
if command -v vgs >/dev/null 2>&1; then
  vfree="$(sudo -n vgs --noheadings --units g -o vg_free 2>/dev/null | tr -d ' g' | cut -d. -f1 || true)"
  [ -z "$vfree" ] || [ "$vfree" -lt 5 ] || warn "LVM has ${vfree} GiB unallocated; root LV can be extended (reviewed procedure in docs/recovery.md)"
fi

# Kernel I/O errors since boot (virtio disk backed by the USB HDD).
if journalctl -k -b --no-pager 2>/dev/null | grep -qiE 'I/O error|blk_update_request|EXT4-fs error'; then
  fail "STOR-03 kernel reported storage errors this boot (journalctl -k -b)"
else
  pass "STOR-03 no kernel storage errors this boot"
fi

# NET-01
show ip -4 -br addr
show ip -4 route
if getent hosts github.com >/dev/null; then pass "NET-01 github.com resolves"; else fail "NET-01 DNS for github.com"; fi
if curl -Is --max-time 10 https://github.com >/dev/null; then pass "NET-01 TLS to github.com"; else fail "NET-01 HTTPS to github.com"; fi
if curl -Is --max-time 10 https://ghcr.io/v2/ >/dev/null; then pass "NET-01 ghcr.io reachable"; else fail "NET-01 ghcr.io unreachable"; fi

# Services
for svc in ssh tailscaled chrony; do
  if systemctl is-active --quiet "$svc"; then pass "service $svc active"; else warn "service $svc not active"; fi
done
timedatectl show -p NTPSynchronized --value 2>/dev/null | grep -q yes \
  && pass "clock NTP-synchronised" || warn "clock not NTP-synchronised"

if command -v tailscale >/dev/null 2>&1; then
  ts_ip="$(tailscale ip -4 2>/dev/null | head -1 || true)"
  [ -n "$ts_ip" ] && pass "tailscale IPv4 $ts_ip" || warn "tailscale installed but not logged in"
fi

if [ "$CHECK_K3S" -eq 1 ]; then
  [ "$(cat /proc/sys/net/ipv4/ip_forward)" = 1 ] && pass "ip_forward=1" || info "ip_forward=0 (k3s enables it at start)"
  [ -f /sys/fs/cgroup/cgroup.controllers ] && pass "cgroup v2 unified hierarchy" || warn "cgroup v2 not detected"
  for c in cpu memory pids; do
    grep -qw "$c" /sys/fs/cgroup/cgroup.controllers 2>/dev/null && pass "cgroup controller $c" || fail "cgroup controller $c missing"
  done
  swap="$(awk 'NR>1' /proc/swaps | wc -l)"
  [ "$swap" -eq 0 ] && info "no swap active" || info "swap active (${swap} device(s)); k3s tolerates swap, kubelet memory accounting excludes it"
  if systemctl is-active --quiet k3s; then
    pass "k3s active"
    show sudo -n k3s kubectl get nodes -o wide
    show sudo -n k3s kubectl get sc
    show sudo -n ls -ld /var/lib/rancher/k3s/storage
  else
    info "k3s not installed or not active"
  fi
fi

finish
