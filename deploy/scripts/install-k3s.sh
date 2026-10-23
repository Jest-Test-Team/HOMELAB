#!/usr/bin/env bash
# P3: install a PINNED k3s release with checksum verification. Run in the guest.
#
#   install-k3s.sh --version v1.36.5+k3s1 --yes
#
# Downloads the arm64 binary and sha256 list from the GitHub release, verifies
# the checksum, and runs the install.sh from the SAME tag (not the floating
# get.k3s.io) with INSTALL_K3S_SKIP_DOWNLOAD. Flags: traefik disabled,
# kubeconfig 0600. Refuses to touch an existing k3s install.
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

VERSION=""
YES=0
while [ $# -gt 0 ]; do
  case "$1" in
    --version) VERSION="${2:?}"; shift 2 ;;
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,10p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
[[ "$VERSION" =~ ^v[0-9]+\.[0-9]+\.[0-9]+\+k3s[0-9]+$ ]] || die "--version vX.Y.Z+k3sN is required"
[ "$(uname -m)" = aarch64 ] || die "expected an aarch64 guest"
[ ! -e /usr/local/bin/k3s ] || die "k3s already installed ($(/usr/local/bin/k3s --version | head -1)); upgrades are a separate reviewed step"
need_cmd curl
need_cmd sha256sum

tag_url="${VERSION//+/%2B}"
base="https://github.com/k3s-io/k3s/releases/download/$tag_url"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

curl -fsSL -o "$work/k3s-arm64" "$base/k3s-arm64"
curl -fsSL -o "$work/sha256sum-arm64.txt" "$base/sha256sum-arm64.txt"
curl -fsSL -o "$work/install.sh" "https://raw.githubusercontent.com/k3s-io/k3s/$tag_url/install.sh"
( cd "$work" && grep -E ' k3s-arm64$' sha256sum-arm64.txt | sha256sum -c - ) || die "k3s binary checksum mismatch"
pass "k3s-arm64 $VERSION checksum verified"
info "install.sh sha256: $(sha256sum "$work/install.sh" | cut -d' ' -f1) (review: less $work/install.sh)"

if [ "$YES" -ne 1 ]; then
  info "dry run. Review the script, then rerun with --yes to install."
  trap - EXIT
  info "files kept in $work"
  exit 0
fi

sudo install -m 0755 "$work/k3s-arm64" /usr/local/bin/k3s
sudo env INSTALL_K3S_SKIP_DOWNLOAD=true INSTALL_K3S_VERSION="$VERSION" \
  INSTALL_K3S_EXEC='server --write-kubeconfig-mode 600 --disable traefik' \
  sh "$work/install.sh"

for _ in $(seq 1 60); do
  sudo k3s kubectl get nodes --no-headers 2>/dev/null | awk '$2=="Ready"' | grep -q . && break
  sleep 5
done
sudo k3s kubectl get nodes -o wide
sudo k3s kubectl get storageclass
pass "k3s $VERSION installed; record the version in docs/runbook.md"
