#!/usr/bin/env bash
# Decrypt an encrypted report archive locally with your archive private key.
# This is the SAFEST way to read the reports: your key never leaves the Mac.
#
#   lab/crypto/decrypt-reports.sh reports-<sha>.tar.zst.age [OUTDIR]
#
# Download the artifact first, e.g.:
#   gh run download <run-id> -n reports-<sha> -D .
# Then run this on the .age file. OUTDIR defaults to ./reports-<stamp>.
set -Eeuo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$REPO_ROOT/deploy/scripts/lib.sh"

BLOB="${1:?usage: decrypt-reports.sh <blob.tar.zst.age> [outdir]}"
OUT="${2:-./reports-$(date -u +%Y%m%dT%H%M%SZ)}"
R_IDENTITY="${R_IDENTITY:-$HOME/.config/age/lab-identity.txt}"

need_cmd age; need_cmd zstd
[ -f "$BLOB" ] || die "blob not found: $BLOB"
[ -f "$R_IDENTITY" ] || die "archive identity not found: $R_IDENTITY (run setup-keys.sh, or restore your backup)"

mkdir -p "$OUT"
age -d -i "$R_IDENTITY" "$BLOB" | zstd -dq | tar -C "$OUT" -xf -
pass "decrypted -> $OUT"
find "$OUT" -maxdepth 2 -type f | sed 's/^/    /'
finish
