#!/usr/bin/env bash
# P2 (guest): read-only GitHub deploy key, trusted checkout, deploy.env.
#
#   20-guest-github-identity.sh                               # report
#   20-guest-github-identity.sh --backup-dir DIR --yes        # set everything up
#   20-guest-github-identity.sh --https --backup-dir DIR --yes
#
# --https clones the PUBLIC repo anonymously over HTTPS instead of using a
# deploy key (needed when the organization has deploy keys disabled). No
# credential is stored; it stops working if the repo is made private.
#
# Steps: ~/.ssh/github_homelab_ro key -> ~/.ssh/config "github-homelab" ->
# GitHub host key checked against the published fingerprint -> wait until you
# add the key on GitHub (Settings > Deploy keys, read-only) -> /opt/homelab
# dirs -> clone to /opt/homelab/repo -> /etc/homelab/deploy.env.
#
# --backup-dir must be storage on ANOTHER physical device (NAS mount, second
# disk); a backup on the VM disk sits on the same USB HDD. Defaults to the
# example's /mnt/offdevice-backup/homelab, with a warning if it is missing.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

BACKUP_DIR="/mnt/offdevice-backup/homelab"
HTTPS=0
while [ $# -gt 0 ]; do
  case "$1" in
    --backup-dir) BACKUP_DIR="${2:?}"; shift 2 ;;
    --https) HTTPS=1; shift ;;
    --yes) YES=1; shift ;;
    -h|--help) sed -n '2,19p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_guest
[ "$(id -u)" -ne 0 ] || die "run as your normal VM user, not root"
need_cmd git; need_cmd ssh-keygen

KEY="$HOME/.ssh/github_homelab_ro"
REMOTE="git@github-homelab:${REPO_SLUG}.git"
[ "$HTTPS" -eq 0 ] || REMOTE="https://github.com/${REPO_SLUG}.git"
REPO=/opt/homelab/repo

if [ "$HTTPS" -eq 1 ]; then
  info "HTTPS mode: anonymous read-only clone of $REMOTE, no deploy key"
  [ "$YES" -eq 1 ] || { info "rerun with --https --backup-dir DIR --yes to continue"; finish; exit; }
  git ls-remote --heads "$REMOTE" main >/dev/null 2>&1 || die "cannot read $REMOTE anonymously; is the repo still public?"
  pass "GIT-01 anonymous HTTPS read of $REMOTE works"
else

# 1. Deploy key
if [ -f "$KEY" ]; then
  pass "deploy key exists: $KEY"
elif confirm "ssh-keygen $KEY (no passphrase: used by unattended deploys)"; then
  install -d -m 700 "$HOME/.ssh"
  ssh-keygen -t ed25519 -a 100 -f "$KEY" -C 'utm-homelab-repo-readonly' -N ''
fi

# 2. ssh config entry
if grep -q '^Host github-homelab$' "$HOME/.ssh/config" 2>/dev/null; then
  pass "$HOME/.ssh/config has Host github-homelab"
elif confirm "append Host github-homelab to ~/.ssh/config"; then
  install -d -m 700 "$HOME/.ssh"
  printf '\nHost github-homelab\n    HostName github.com\n    User git\n    IdentityFile %s\n    IdentitiesOnly yes\n    StrictHostKeyChecking yes\n' "$KEY" >> "$HOME/.ssh/config"
  chmod 600 "$HOME/.ssh/config"
fi

# 3. GitHub host key, verified against the published fingerprint
if ssh-keygen -F github.com -f "$HOME/.ssh/known_hosts" 2>/dev/null | grep -q ssh-ed25519; then
  pass "known_hosts has github.com"
elif confirm "add github.com ed25519 key to known_hosts after fingerprint check"; then
  tmp="$(mktemp)"
  ssh-keyscan -t ed25519 github.com > "$tmp" 2>/dev/null
  fp="$(ssh-keygen -lf "$tmp" | awk '{print $2}')"
  if [ "$fp" = "$GITHUB_ED25519_FP" ]; then
    cat "$tmp" >> "$HOME/.ssh/known_hosts"
    pass "github.com fingerprint matches $GITHUB_ED25519_FP"
  else
    rm -f "$tmp"
    die "github.com fingerprint $fp does NOT match the published $GITHUB_ED25519_FP; stop and investigate"
  fi
  rm -f "$tmp"
fi

[ "$YES" -eq 1 ] || { info "rerun with --backup-dir DIR --yes to continue"; finish; exit; }

# 4. Wait for the operator to add the key on GitHub
gh_ok() { ssh -T -o BatchMode=yes github-homelab 2>&1 | grep -q 'successfully authenticated'; }
if gh_ok; then
  pass "GIT-01 deploy key accepted by GitHub"
else
  show ssh-keygen -lf "$KEY.pub"
  info "add this key at https://github.com/${REPO_SLUG}/settings/keys/new"
  info "title: utm-homelab-repo-readonly; leave 'Allow write access' UNCHECKED"
  cat "$KEY.pub"
  printf 'Press Enter after adding the key... '
  read -r _
  gh_ok || die "GitHub still rejects the key; check it was added to ${REPO_SLUG}"
  pass "GIT-01 deploy key accepted by GitHub"
fi

fi  # HTTPS=0

# 5. Directories and checkout
sudo mkdir -p /opt/homelab/releases /opt/homelab/state /opt/homelab/backups
sudo chown "$USER:$USER" /opt/homelab /opt/homelab/releases /opt/homelab/state /opt/homelab/backups
if [ -d "$REPO/.git" ]; then
  have="$(git -C "$REPO" remote get-url origin)"
  [ "$have" = "$REMOTE" ] || die "$REPO origin is $have, expected $REMOTE"
  pass "$REPO already cloned"
else
  git clone "$REMOTE" "$REPO"
  pass "cloned $REMOTE to $REPO"
fi

# 6. /etc/homelab/deploy.env from the example
sudo install -d -m 755 /etc/homelab
sudo install -d -m 700 -o root -g root /etc/homelab/secrets
env_tmp="$(mktemp)"
sed -e "s|^BACKUP_DIR=.*|BACKUP_DIR=${BACKUP_DIR}|" \
    -e "s|^ALLOWED_REMOTE=.*|ALLOWED_REMOTE=${REMOTE}|" \
    -e "s|^KUBECTL=.*|KUBECTL=\"kubectl --kubeconfig=${HOME}/.kube/config\"  # k3s kubectl ignores ~/.kube/config otherwise|" \
    -e "s|<vm-user>|${USER}|g" \
    "$REPO/deploy/deploy.env.example" > "$env_tmp"
if [ -f /etc/homelab/deploy.env ]; then
  if sudo cmp -s /etc/homelab/deploy.env "$env_tmp"; then
    pass "/etc/homelab/deploy.env up to date"
  else
    warn "/etc/homelab/deploy.env exists and differs from the template; left unchanged:"
    sudo diff /etc/homelab/deploy.env "$env_tmp" || true
  fi
else
  sudo install -m 644 -o root -g root "$env_tmp" /etc/homelab/deploy.env
  pass "wrote /etc/homelab/deploy.env"
fi
rm -f "$env_tmp"

if [ -d "$BACKUP_DIR" ] && [ -w "$BACKUP_DIR" ]; then
  [ "$(df -P "$BACKUP_DIR" | awk 'NR==2 {print $6}')" != / ] && pass "BACKUP_DIR $BACKUP_DIR is on its own mount" \
    || warn "BACKUP_DIR $BACKUP_DIR is on the root disk (same USB HDD as the VM)"
else
  warn "BACKUP_DIR $BACKUP_DIR does not exist or is not writable; mount off-device storage there before deploying with --migrate"
fi
[ "$HTTPS" -eq 1 ] || info "record the deploy key fingerprint in docs/access.md"
finish
