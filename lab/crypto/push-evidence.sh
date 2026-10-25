#!/usr/bin/env bash
# Encrypt the lab-evidence directory and push it to the evidence-inbox branch,
# which triggers .github/workflows/lab-analysis.yml. Run by launchd/cron on the Mac.
#
#   lab/crypto/push-evidence.sh          # encrypt + push (triggers analysis)
#   lab/crypto/push-evidence.sh --local  # encrypt only; print the blob path, no push
#
# Nothing plaintext leaves the Mac: the evidence is tar+zstd'd and encrypted to the
# transport public key (lab/crypto/transport.recipient) before it is pushed. The
# inbox branch is force-pushed (one commit on top of HEAD, so it carries the
# workflow + pipeline code + blob), so the repo history does not grow. Override
# EVIDENCE_DIR to point elsewhere.
set -Eeuo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$REPO_ROOT/deploy/scripts/lib.sh"

EVIDENCE_DIR="${EVIDENCE_DIR:-/Volumes/HOMELAB/Backups/lab-evidence}"
T_RECIPIENT="$REPO_ROOT/lab/crypto/transport.recipient"
INBOX_BRANCH="${INBOX_BRANCH:-evidence-inbox}"
LOCAL_ONLY=0
[ "${1:-}" = "--local" ] && LOCAL_ONLY=1

need_cmd age; need_cmd zstd; need_cmd git
[ -d "$EVIDENCE_DIR" ] || die "evidence dir not found: $EVIDENCE_DIR"
[ -s "$T_RECIPIENT" ] || die "transport recipient missing; run lab/crypto/setup-keys.sh first"
# refuse to run if the dir is empty
find "$EVIDENCE_DIR" -maxdepth 1 -type f | grep -q . || die "no evidence files in $EVIDENCE_DIR"

WORK="$(mktemp -d)"; trap 'rm -rf "$WORK"' EXIT
STAMP="$(date -u +%Y%m%dT%H%M%SZ)"
BLOB="$WORK/evidence-$STAMP.tar.zst.age"

info "packing + encrypting $EVIDENCE_DIR"
tar -C "$EVIDENCE_DIR" -cf - . | zstd -q -19 | age -R "$T_RECIPIENT" -o "$BLOB"
SZ=$(du -h "$BLOB" | cut -f1)
pass "encrypted evidence -> $BLOB ($SZ)"

if [ "$LOCAL_ONLY" -eq 1 ]; then
  info "--local: not pushing. Blob at: $BLOB"
  finish; exit 0
fi

REMOTE_URL="$(git -C "$REPO_ROOT" remote get-url origin)"
CURR_SHA="$(git -C "$REPO_ROOT" rev-parse --short HEAD)"
info "publishing $INBOX_BRANCH from $CURR_SHA (carries the workflow + pipeline code + blob)"
# Branch evidence-inbox from the current commit via a detached worktree, so the
# pushed branch contains .github/workflows/lab-analysis.yml (a push to a branch
# WITHOUT the workflow would not trigger it) plus analyze.jl and recipients.txt.
WT="$WORK/wt"
git -C "$REPO_ROOT" worktree add -q --detach "$WT" HEAD
trap 'git -C "$REPO_ROOT" worktree remove --force "$WT" 2>/dev/null || true; rm -rf "$WORK"' EXIT
mkdir -p "$WT/inbox"
cp "$BLOB" "$WT/inbox/evidence.tar.zst.age"
cat > "$WT/inbox/manifest.txt" <<EOF
# Encrypted lab-evidence drop. Decrypt only inside lab-analysis.yml with LAB_ANALYSIS_KEY.
stamp=$STAMP
sha256=$(shasum -a 256 "$BLOB" | cut -d' ' -f1)
EOF
(
  cd "$WT" || exit 1
  git add -f inbox/   # *.tar.zst.age is gitignored; force it into this one commit
  git -c user.name='homelab-bot' -c user.email='homelab-bot@users.noreply.github.com' \
    commit -q -m "evidence drop $STAMP (encrypted)"
  git push -q --force "$REMOTE_URL" "HEAD:$INBOX_BRANCH"
)
pass "pushed $INBOX_BRANCH; lab-analysis.yml will run"
info "watch it: gh run watch  (or: gh run list --workflow=lab-analysis.yml)"
finish
