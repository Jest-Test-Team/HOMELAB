#!/usr/bin/env bash
# Encrypt the lab-evidence directory and push it to the evidence-inbox branch,
# which triggers .github/workflows/lab-analysis.yml. Run by launchd/cron on the Mac.
#
#   lab/crypto/push-evidence.sh          # encrypt + push (triggers analysis)
#   lab/crypto/push-evidence.sh --local  # encrypt only; print the blob path, no push
#
# Nothing plaintext leaves the Mac: the evidence is tar+zstd'd and encrypted to the
# transport public key (lab/crypto/transport.recipient) before it is pushed. The
# inbox branch is force-pushed as a single orphan commit, so the repo history does
# not grow. Override EVIDENCE_DIR to point elsewhere.
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
info "force-pushing a single-commit $INBOX_BRANCH (triggers lab-analysis.yml)"
STAGE="$WORK/stage"; mkdir -p "$STAGE/inbox"
cp "$BLOB" "$STAGE/inbox/evidence.tar.zst.age"
cat > "$STAGE/inbox/manifest.txt" <<EOF
# Encrypted lab-evidence drop. Decrypt only inside lab-analysis.yml with LAB_ANALYSIS_KEY.
stamp=$STAMP
sha256=$(shasum -a 256 "$BLOB" | cut -d' ' -f1)
EOF
(
  cd "$STAGE" || exit 1
  git init -q
  git checkout -q -b "$INBOX_BRANCH"
  git -c user.name='homelab-bot' -c user.email='homelab-bot@users.noreply.github.com' \
    add inbox/ >/dev/null
  git -c user.name='homelab-bot' -c user.email='homelab-bot@users.noreply.github.com' \
    commit -q -m "evidence drop $STAMP (encrypted)"
  git push -q --force "$REMOTE_URL" "$INBOX_BRANCH"
)
pass "pushed $INBOX_BRANCH; analysis workflow will run"
info "watch it: gh run list --workflow=lab-analysis.yml"
finish
