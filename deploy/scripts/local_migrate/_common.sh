# shellcheck shell=bash disable=SC2034  # variables are used by the sourcing scripts
# Shared helpers for deploy/scripts/local_migrate/*.sh. Source, do not execute.
#
# Every step script is safe to rerun. Steps that change state print what they
# will do and need --yes; without it they stop after the read-only checks.

LM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DIR="$(cd "$LM_DIR/.." && pwd)"
REPO_ROOT="$(cd "$SCRIPTS_DIR/../.." && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPTS_DIR/lib.sh"

# Defaults shared by several steps. Override through the environment.
HOMELAB_VOLUME="${HOMELAB_VOLUME:-/Volumes/HOMELAB}"
VM_HOSTNAME="${VM_HOSTNAME:-utm-homelab}"
DEV_KEY="${DEV_KEY:-$HOME/.ssh/homelab_utm_ed25519}"
REPO_SLUG="${REPO_SLUG:-Jest-Test-Team/HOMELAB}"
K3S_VERSION="${K3S_VERSION:-v1.36.5+k3s1}"
# GitHub's published ed25519 host key fingerprint:
# https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints
GITHUB_ED25519_FP="SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU"

YES=0

on_macos() { [ "$(uname -s)" = Darwin ] || die "run this step on macOS (${1:-host or dev Mac})"; }
on_guest() { [ "$(uname -s)" = Linux ] || die "run this step inside the Ubuntu guest"; }

# Gate a state-changing action. Usage: confirm "what will happen" || return 0
confirm() {
  if [ "$YES" -eq 1 ]; then
    info "applying: $*"
    return 0
  fi
  info "would apply: $*  (rerun with --yes)"
  return 1
}

# Write content to a file only when it differs; keeps a timestamped backup.
replace_if_changed() {
  local dest="$1" tmp="$2"
  if [ -f "$dest" ] && cmp -s "$dest" "$tmp"; then
    pass "$dest already up to date"
    rm -f "$tmp"
    return 0
  fi
  [ -f "$dest" ] && cp -p "$dest" "$dest.bak-$(date -u +%Y%m%dT%H%M%SZ)"
  mv "$tmp" "$dest"
  pass "wrote $dest"
}
