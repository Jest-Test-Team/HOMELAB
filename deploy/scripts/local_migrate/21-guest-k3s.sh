#!/usr/bin/env bash
# P3 (guest): install pinned k3s, user kubeconfig, verify the cluster.
#
#   21-guest-k3s.sh          # preflight + verify the release checksum, no install
#   21-guest-k3s.sh --yes    # install k3s, set up ~/.kube/config
#
# K3S_VERSION overrides the pinned release (default v1.36.5+k3s1). Uses the
# trusted checkout in /opt/homelab/repo when present.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

while [ $# -gt 0 ]; do
  case "$1" in
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,8p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest
[ "$(id -u)" -ne 0 ] || die "run as your normal VM user, not root"
S="$SCRIPTS_DIR"; [ -x /opt/homelab/repo/deploy/scripts/install-k3s.sh ] && S=/opt/homelab/repo/deploy/scripts

"$S/preflight-guest.sh" --k3s || true

if systemctl is-active --quiet k3s 2>/dev/null; then
  pass "k3s already running: $(k3s --version | head -1)"
elif [ "$YES" -eq 1 ]; then
  "$S/install-k3s.sh" --version "$K3S_VERSION" --yes
else
  "$S/install-k3s.sh" --version "$K3S_VERSION"
  info "rerun with --yes to install"
  finish; exit
fi

if [ -f "$HOME/.kube/config" ] && sudo cmp -s /etc/rancher/k3s/k3s.yaml "$HOME/.kube/config"; then
  pass "$HOME/.kube/config matches the k3s kubeconfig"
else
  install -d -m 700 "$HOME/.kube"
  sudo install -m 600 -o "$USER" -g "$(id -gn)" /etc/rancher/k3s/k3s.yaml "$HOME/.kube/config"
  pass "installed ~/.kube/config (0600; makes $USER cluster-admin, see docs/security.md)"
fi

for i in $(seq 1 30); do
  kubectl get nodes 2>/dev/null | grep -q ' Ready ' && break
  [ "$i" -eq 30 ] && fail "K3S-01 node not Ready after 150s"
  sleep 5
done
show kubectl get nodes -o wide
show kubectl get sc
kubectl get nodes | grep -q ' Ready ' && pass "K3S-01 node Ready"
kubectl get sc local-path >/dev/null 2>&1 && pass "local-path StorageClass present" || fail "no local-path StorageClass"

enc="$(sudo k3s secrets-encrypt status 2>&1 || true)"
if printf '%s' "$enc" | grep -qi 'Encryption Status: Enabled'; then
  pass "secrets encryption at rest enabled"
else
  warn "secrets encryption at rest is not enabled; see the k3s --secrets-encrypt docs before 22-guest-secrets.sh"
  printf '%s\n' "$enc"
fi
finish
