# shellcheck shell=bash
# Shared helpers for deploy/scripts/*.sh. Source, do not execute.

HOMELAB_FAILS=0
HOMELAB_WARNS=0

_ts() { date -u +%Y-%m-%dT%H:%M:%SZ; }

pass() { printf '%s PASS  %s\n' "$(_ts)" "$*"; }
info() { printf '%s INFO  %s\n' "$(_ts)" "$*"; }
warn() { printf '%s WARN  %s\n' "$(_ts)" "$*" >&2; HOMELAB_WARNS=$((HOMELAB_WARNS + 1)); }
fail() { printf '%s FAIL  %s\n' "$(_ts)" "$*" >&2; HOMELAB_FAILS=$((HOMELAB_FAILS + 1)); }
die()  { printf '%s FATAL %s\n' "$(_ts)" "$*" >&2; exit 1; }

# Print a summary line and exit non-zero if any check failed.
finish() {
  info "summary: ${HOMELAB_FAILS} fail, ${HOMELAB_WARNS} warn"
  [ "$HOMELAB_FAILS" -eq 0 ]
}

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "required command not found: $1"
}

# Run a command, printing it first; used for read-only evidence output.
show() {
  printf '\n$ %s\n' "$*"
  "$@" 2>&1 || true
}
