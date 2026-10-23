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
# k3s's bundled kubectl prefers the root-only /etc/rancher/k3s/k3s.yaml unless
# KUBECONFIG is set, so point it at the user copy here and in ~/.bashrc.
export KUBECONFIG="$HOME/.kube/config"
S="$SCRIPTS_DIR"; [ -x /opt/homelab/repo/deploy/scripts/install-k3s.sh ] && S=/opt/homelab/repo/deploy/scripts

"$S/preflight-guest.sh" --k3s || true

# AppArmor: on kernels that stack the container profile (Ubuntu 26.10), the
# stock containerd profile blocks signals between processes in one container,
# which hangs PostgreSQL. Load the fixed profile before k3s creates containers.
# Details in deploy/apparmor/cri-containerd.apparmor.d.
AA_SRC="$REPO_ROOT/deploy/apparmor/cri-containerd.apparmor.d"
[ -f /opt/homelab/repo/deploy/apparmor/cri-containerd.apparmor.d ] && AA_SRC=/opt/homelab/repo/deploy/apparmor/cri-containerd.apparmor.d
AA_DST=/etc/apparmor.d/cri-containerd.apparmor.d
if [ ! -d /sys/kernel/security/apparmor ]; then
  info "AppArmor not enabled; skipping the containerd profile"
elif sudo cmp -s "$AA_SRC" "$AA_DST"; then
  pass "AppArmor profile $AA_DST installed"
elif [ "$YES" -eq 1 ]; then
  sudo apparmor_parser -Q -K "$AA_SRC" || die "AppArmor profile $AA_SRC does not parse"
  sudo install -m 644 -o root -g root "$AA_SRC" "$AA_DST"
  sudo apparmor_parser -r -W "$AA_DST"
  pass "AppArmor profile $AA_DST installed and loaded (running containers updated)"
else
  info "would install AppArmor profile $AA_DST (rerun with --yes)"
fi

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

# shellcheck disable=SC2016  # literal: expanded later by bash
line='export KUBECONFIG="$HOME/.kube/config"  # homelab: k3s kubectl'
if grep -qF "$line" "$HOME/.bashrc" 2>/dev/null; then
  pass "$HOME/.bashrc exports KUBECONFIG"
else
  # Top of the file: Ubuntu's .bashrc returns early for non-interactive shells,
  # and ssh-run commands still read it before that check.
  { printf '%s\n' "$line"; cat "$HOME/.bashrc" 2>/dev/null; } > "$HOME/.bashrc.homelab.tmp"
  mv "$HOME/.bashrc.homelab.tmp" "$HOME/.bashrc"
  pass "added KUBECONFIG to the top of ~/.bashrc"
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

enc_status() { sudo k3s secrets-encrypt status 2>&1 || true; }
enc="$(enc_status)"
if printf '%s' "$enc" | grep -qi 'Encryption Status: Enabled'; then
  pass "secrets encryption at rest enabled"
else
  # Enable before any Secret exists, so nothing needs re-encrypting.
  n="$(kubectl get secrets -A --no-headers 2>/dev/null | wc -l | tr -d ' ')"
  info "secrets encryption disabled; $n Secret(s) in the cluster"
  if grep -q '^secrets-encryption:' /etc/rancher/k3s/config.yaml 2>/dev/null; then
    warn "config.yaml already sets secrets-encryption but status is not Enabled; check: sudo journalctl -u k3s"
  else
    printf 'secrets-encryption: true\n' | sudo tee -a /etc/rancher/k3s/config.yaml >/dev/null
    # 0644: k3s kubectl reads this file too, and it holds no secret here.
    sudo chmod 644 /etc/rancher/k3s/config.yaml
    info "restarting k3s with secrets-encryption: true"
    sudo systemctl restart k3s
    for i in $(seq 1 30); do
      kubectl get nodes 2>/dev/null | grep -q ' Ready ' && enc_status | grep -qi 'Encryption Status: Enabled' && break
      sleep 5
    done
    [ "$n" -eq 0 ] || sudo k3s secrets-encrypt reencrypt --force --skip || warn "reencrypt of existing Secrets failed"
    enc="$(enc_status)"
    if printf '%s' "$enc" | grep -qi 'Encryption Status: Enabled'; then
      pass "secrets encryption at rest enabled"
    else
      fail "secrets encryption still not enabled"
    fi
  fi
  printf '%s\n' "$enc"
fi
finish
