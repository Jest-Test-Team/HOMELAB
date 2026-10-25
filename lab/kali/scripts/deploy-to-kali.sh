#!/usr/bin/env bash
# deploy-to-kali.sh — copy this scripts/ directory ONTO the Kali VM so the tools
# run locally there (list-apps.sh, tool.sh, toolkit.sh, run-all.sh, …). Run this
# FROM the Mac. The scripts live in the git repo on the Mac; the VM needs its own
# copy because paths like /Users/.../HOMELAB/... do not exist on Kali.
#
#   ./deploy-to-kali.sh kali@<KALI_IP>
#   KALI_SSH=kali@<KALI_IP> ./deploy-to-kali.sh
#
# Options (environment):
#   KALI_SSH   ssh destination user@host          (required: arg 1 or this var)
#   KALI_KEY   ssh identity file                   (default ~/.ssh/homelab_utm_ed25519)
#   DEST       remote directory (under $HOME)      (default kali-scripts)
#   NO_VERIFY  set to 1 to skip the post-copy list-apps.sh smoke test
#
# Scope: operator-owned VM only (lab/ROE.md). Copies code only — no keys, no evidence.
set -Eeuo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
die() { printf 'error: %s\n' "$*" >&2; exit 1; }

KALI_SSH="${1:-${KALI_SSH:-}}"
[ -n "$KALI_SSH" ] || die "give the VM as 'user@host', e.g. ./deploy-to-kali.sh kali@<KALI_IP>  (or set KALI_SSH=)"
KALI_KEY="${KALI_KEY:-$HOME/.ssh/homelab_utm_ed25519}"
DEST="${DEST:-kali-scripts}"
[ -f "$KALI_KEY" ] || die "ssh key not found: $KALI_KEY (set KALI_KEY=)"

SSH=(ssh -i "$KALI_KEY" -o ConnectTimeout=8 -o StrictHostKeyChecking=accept-new)

printf '==> target: %s   dest: ~/%s\n' "$KALI_SSH" "$DEST"
"${SSH[@]}" "$KALI_SSH" "mkdir -p ~/$DEST" || die "cannot ssh to $KALI_SSH"

# Prefer rsync (fast, deletes removed files); fall back to scp.
if command -v rsync >/dev/null 2>&1; then
  rsync -az --delete \
    --exclude '.git' \
    -e "ssh -i $KALI_KEY -o StrictHostKeyChecking=accept-new" \
    "$DIR"/ "$KALI_SSH:$DEST/" || die "rsync failed"
else
  printf '    rsync not found — using scp\n'
  # shellcheck disable=SC2086  # intentional word-splitting of the ssh options
  scp -i "$KALI_KEY" -o StrictHostKeyChecking=accept-new -r "$DIR"/* "$KALI_SSH:$DEST/" || die "scp failed"
fi

# Make sure everything is executable on the VM.
"${SSH[@]}" "$KALI_SSH" "chmod +x ~/$DEST/*.sh" || true
printf '==> deployed. On the VM:  cd ~/%s && ./list-apps.sh\n' "$DEST"

if [ "${NO_VERIFY:-0}" != 1 ]; then
  printf '==> smoke test (list-apps.sh --tsv | head) on the VM:\n'
  "${SSH[@]}" "$KALI_SSH" "cd ~/$DEST && ./list-apps.sh --tsv 2>/dev/null | head -5 || ./list-apps.sh 2>/dev/null | head -5" \
    || printf '    (list-apps smoke test skipped/failed — run it on the VM to see why)\n'
fi
