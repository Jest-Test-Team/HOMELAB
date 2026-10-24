#!/usr/bin/env bash
# Repo hygiene: scan tracked text files for sensitive values / PII before pushing.
#
#   deploy/scripts/scan-secrets.sh          # scan; non-zero exit if anything hits
#   deploy/scripts/scan-secrets.sh --list   # also print every matching line
#
# This enforces the de-identification pass: real Tailscale addresses, personal
# tailnet names, this operator's SSH key fingerprints, the VM MAC, private login
# names and raw secret material must not live in the repo. Placeholders in
# angle brackets (e.g. <tailscale-ip>, <vm-user>) are the intended replacements
# and are ignored. GitHub's own published host-key fingerprint is allow-listed.
#
# Run it locally and/or wire it into CI (the `scripts` job). It only reads files.
set -Eeuo pipefail
cd "$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "deploy/scripts/lib.sh"

LIST=0
[ "${1:-}" = "--list" ] && LIST=1

# Only tracked text files, minus vendored/build output and this scanner itself
# (it necessarily contains the very patterns it searches for).
mapfiles() { git ls-files | grep -vE '^(target/|frontend/node_modules/|lab/terraform/\.terraform/|deploy/scripts/scan-secrets\.sh$)'; }
FILES=()
while IFS= read -r _f; do [ -n "$_f" ] && FILES+=("$_f"); done < <(mapfiles)
[ "${#FILES[@]}" -gt 0 ] || die "no tracked files found (run inside the repo)"

# Allow-list, pipe-separated:
#   * GitHub's public ed25519 host-key fingerprint (meant to be in the repo),
#   * 100.64.0.1 — the generic CGNAT sample the isolation test pings to PROVE
#     Kali cannot reach Tailscale (not the operator's address).
ALLOW='SHA256:\+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU|100\.64\.0\.1\b'

# name | extended-regex. Keep patterns specific to avoid false positives.
scan() {
  local name="$1" re="$2"
  local hits; hits="$(grep -InE "$re" "${FILES[@]}" 2>/dev/null | grep -vE "$ALLOW" || true)"
  if [ -n "$hits" ]; then
    fail "$name"
    [ "$LIST" -eq 1 ] && printf '%s\n' "$hits" | sed 's/^/      /'
  else
    pass "$name"
  fi
}

info "scanning ${#FILES[@]} tracked text files"

scan "Tailscale CGNAT addresses (100.64.0.0/10)" \
  '100\.(6[4-9]|[7-9][0-9]|1[01][0-9]|12[0-7])\.[0-9]+\.[0-9]+'
scan "private tailnet name (*.github / *.ts.net)" \
  '[A-Za-z0-9_-]+\.(github|ts)\.net|dennislee928'
scan "public email addresses" \
  '[A-Za-z0-9._%+-]+@(gmail|outlook|hotmail|yahoo|icloud|proton(mail)?)\.[A-Za-z]{2,}'
scan "SSH private keys" \
  'BEGIN (OPENSSH|RSA|EC|DSA) PRIVATE KEY'
scan "age private identities" \
  'AGE-SECRET-KEY-1[0-9A-Z]+'
scan "concrete SSH key fingerprints (base64, not a placeholder)" \
  'SHA256:[A-Za-z0-9+/]{30,}'
scan "MAC addresses" \
  '([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}'
scan "literal bearer tokens / API keys (>=20 chars)" \
  '(Bearer|token|apikey|api_key|secret)[=:[:space:]\"]+[A-Za-z0-9/_+-]{20,}'
scan "kubeconfig / certificate data blobs" \
  'client-(key|certificate)-data:|BEGIN CERTIFICATE'

finish
