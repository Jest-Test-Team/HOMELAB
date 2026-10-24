#!/usr/bin/env bash
# One-time key setup for the encrypted lab-evidence analysis pipeline (run on the Mac).
#
#   lab/crypto/setup-keys.sh            # create keys if absent
#   lab/crypto/setup-keys.sh --rotate   # replace existing keys (re-sets the GH secret)
#
# Creates two age keypairs (see docs/security.md "Evidence analysis pipeline"):
#   Archive  R : private -> ~/.config/age/lab-identity.txt (LOCAL ONLY, never uploaded)
#                public  -> lab/crypto/recipients.txt        (committed; runner encrypts to it)
#   Transport T: private -> GitHub Actions secret LAB_ANALYSIS_KEY (runner decrypts input)
#                public  -> lab/crypto/transport.recipient    (committed; Mac encrypts to it)
#
# age identities (AGE-SECRET-KEY-...) are the only sensitive material; they are
# git-ignored and flagged by deploy/scripts/scan-secrets.sh. Public recipients
# (age1...) are safe to commit.
set -Eeuo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$REPO_ROOT/deploy/scripts/lib.sh"

ROTATE=0
[ "${1:-}" = "--rotate" ] && ROTATE=1

on_macos() { [ "$(uname -s)" = Darwin ] || die "run this on the Mac"; }
on_macos

R_IDENTITY="${R_IDENTITY:-$HOME/.config/age/lab-identity.txt}"
R_RECIPIENT="$REPO_ROOT/lab/crypto/recipients.txt"
T_RECIPIENT="$REPO_ROOT/lab/crypto/transport.recipient"
GH_SECRET="${GH_SECRET:-LAB_ANALYSIS_KEY}"

need_cmd () { command -v "$1" >/dev/null 2>&1; }
need_cmd age || need_cmd age-keygen || {
  info "age not found; installing with Homebrew"
  need_cmd brew || die "Homebrew not found; install age manually: https://github.com/FiloSottile/age"
  brew install age
}
need_cmd gh || die "GitHub CLI 'gh' not found (needed to set the Actions secret)"
gh auth status >/dev/null 2>&1 || die "run 'gh auth login' first"

if [ -f "$R_IDENTITY" ] && [ "$ROTATE" -eq 0 ]; then
  pass "archive identity already exists: $R_IDENTITY (use --rotate to replace)"
else
  info "generating archive keypair R -> $R_IDENTITY"
  mkdir -p "$(dirname "$R_IDENTITY")"; chmod 700 "$(dirname "$R_IDENTITY")"
  rm -f "$R_IDENTITY"   # age-keygen -o refuses to overwrite; --rotate replaces it
  age-keygen -o "$R_IDENTITY" 2>/dev/null
  chmod 600 "$R_IDENTITY"
  age-keygen -y "$R_IDENTITY" > "$R_RECIPIENT"
  pass "wrote archive public recipient -> lab/crypto/recipients.txt"
fi

info "generating transport keypair T"
T_TMP="$(mktemp -d)"; trap 'rm -rf "$T_TMP"' EXIT
age-keygen -o "$T_TMP/transport-identity.txt" 2>/dev/null
age-keygen -y "$T_TMP/transport-identity.txt" > "$T_RECIPIENT"
pass "wrote transport public recipient -> lab/crypto/transport.recipient"
gh secret set "$GH_SECRET" --repo "$(git -C "$REPO_ROOT" remote get-url origin | sed -E 's#.*github.com[:/]([^/]+/[^/.]+)(\.git)?#\1#')" < "$T_TMP/transport-identity.txt"
pass "set GitHub Actions secret $GH_SECRET (transport private key)"
# scrub the transport private key from disk
if command -v shred >/dev/null 2>&1; then
  shred -u "$T_TMP/transport-identity.txt" 2>/dev/null || rm -f "$T_TMP/transport-identity.txt"
else
  rm -f "$T_TMP/transport-identity.txt"
fi

echo
info "SUMMARY"
info "  committed (safe):   lab/crypto/recipients.txt  lab/crypto/transport.recipient"
info "  LOCAL ONLY (keep!): $R_IDENTITY   <- back this up offline; without it reports cannot be decrypted"
info "  GitHub secret:      $GH_SECRET (transport private; rotate anytime with --rotate)"
info "  verify not tracked: git check-ignore -v \"$R_IDENTITY\" (outside repo) ; scan-secrets.sh must be clean"
finish
