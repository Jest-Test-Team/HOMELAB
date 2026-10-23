#!/usr/bin/env bash
# P1 (dev Mac): create the SSH key for the VM and install its public half.
#
#   11-devmac-ssh-key.sh                          # create key if missing, print it
#   11-devmac-ssh-key.sh --copy-to USER@VM_IP     # also install it (password login)
#
# The key is ~/.ssh/homelab_utm_ed25519 (override with DEV_KEY). ssh-keygen asks
# for a passphrase; the macOS keychain then holds it. --copy-to needs password
# login to still work, so run it before 14-guest-harden-ssh.sh. From the UTM
# host, the VM's Shared-mode address (192.168.64.x) is reachable directly.
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

TARGET=""
while [ $# -gt 0 ]; do
  case "$1" in
    --copy-to) TARGET="${2:?}"; shift 2 ;;
    -h|--help) sed -n '2,10p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos "dev Mac"

if [ -f "$DEV_KEY" ]; then
  pass "key exists: $DEV_KEY"
else
  info "creating $DEV_KEY (choose a passphrase)"
  install -d -m 700 "$HOME/.ssh"
  ssh-keygen -t ed25519 -a 100 -f "$DEV_KEY" -C 'dev-mac-to-utm-homelab'
fi
ssh-add --apple-use-keychain "$DEV_KEY" 2>/dev/null || warn "ssh-add failed; you will be asked for the passphrase on each login"
show ssh-keygen -lf "$DEV_KEY.pub"
info "record this fingerprint in docs/access.md (Key fingerprint)"

if [ -n "$TARGET" ]; then
  info "installing the public key on $TARGET (enter the VM user's password)"
  ssh-copy-id -i "$DEV_KEY.pub" -o IdentitiesOnly=yes "$TARGET"
  if ssh -i "$DEV_KEY" -o IdentitiesOnly=yes -o PasswordAuthentication=no -o BatchMode=yes "$TARGET" true; then
    pass "key login to $TARGET works"
  else
    fail "key login to $TARGET failed"
  fi
else
  info "public key (paste into the guest if you cannot use --copy-to):"
  cat "$DEV_KEY.pub"
fi
finish
