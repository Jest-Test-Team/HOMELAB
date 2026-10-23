#!/usr/bin/env bash
# P5/P6 (dev Mac): deploy a CI-built commit to the VM over SSH, then smoke test.
#
#   30-devmac-deploy.sh --dry-run            # render + validate origin/main
#   30-devmac-deploy.sh --migrate            # first deploy: backup + migrations
#   30-devmac-deploy.sh [--sha SHA] [--persistence]
#
# Defaults to the tip of origin/main. Refuses a SHA whose publish-arm64 run did
# not succeed (checked with gh). --persistence restarts postgres-0 and redis-0
# afterwards to prove data survives (brief DB downtime).
set -Eeuo pipefail
# shellcheck source=deploy/scripts/local_migrate/_common.sh
. "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/_common.sh"

SHA="" FLAGS=() PERSIST=0
while [ $# -gt 0 ]; do
  case "$1" in
    --sha) SHA="${2:?}"; shift 2 ;;
    --migrate|--dry-run) FLAGS+=("$1"); shift ;;
    --persistence) PERSIST=1; shift ;;
    -h|--help) sed -n '2,9p' "$0"; exit 0 ;;
    *) die "unknown argument: $1" ;;
  esac
done
on_macos "dev Mac"
need_cmd gh; need_cmd git

if [ -z "$SHA" ]; then
  git -C "$REPO_ROOT" fetch -q origin main
  SHA="$(git -C "$REPO_ROOT" rev-parse origin/main)"
fi
printf '%s' "$SHA" | grep -Eq '^[0-9a-f]{40}$' || die "SHA must be the full 40-hex commit id"
info "commit $SHA"

concl="$(gh run list -R "$REPO_SLUG" -w publish-arm64 -c "$SHA" --json conclusion,status -q '.[0] | "\(.status) \(.conclusion)"' 2>/dev/null || true)"
case "$concl" in
  "completed success") pass "CI-01 publish-arm64 succeeded for $SHA" ;;
  "") die "no publish-arm64 run for $SHA; push it to main and wait for CI" ;;
  *) die "publish-arm64 for $SHA is '$concl'; wait for it to succeed" ;;
esac

ssh -o BatchMode=yes "$VM_HOSTNAME" true || die "cannot ssh to $VM_HOSTNAME; finish the P1 steps first"
R=/opt/homelab/repo/deploy/scripts
ssh -t "$VM_HOSTNAME" "$R/deploy-from-github.sh ${FLAGS[*]:-} $SHA"
pass "deploy finished"

case " ${FLAGS[*]:-} " in *" --dry-run "*) finish; exit ;; esac
if [ "$PERSIST" -eq 1 ]; then
  ssh -t "$VM_HOSTNAME" "$R/smoke-test.sh --expect-sha $SHA --persistence" && pass "DATA-01/02 persistence smoke test" || fail "persistence smoke test failed"
fi
finish
