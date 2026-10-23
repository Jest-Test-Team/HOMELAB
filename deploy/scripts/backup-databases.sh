#!/usr/bin/env bash
# Logical backups of PostgreSQL (pg_dump custom format) and a Redis RDB snapshot.
#
#   backup-databases.sh [--keep N]
#
# BACKUP_DIR should be on a DIFFERENT physical disk than the external HDD that
# holds the VM (e.g. a mounted NAS share or a second disk). The script warns when
# it is on the root filesystem. Files are mode 0600; secrets are never printed.
set -Eeuo pipefail
umask 077

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

CONFIG="${HOMELAB_DEPLOY_ENV:-/etc/homelab/deploy.env}"
if [ -f "$CONFIG" ]; then
  # shellcheck source=/dev/null
  . "$CONFIG"
fi
: "${BACKUP_DIR:=/opt/homelab/backups}"
: "${NAMESPACE:=homelab}"
read -r -a KC <<< "${KUBECTL:-kubectl}"
KEEP=14
[ "${1:-}" = "--keep" ] && KEEP="${2:?}"
k() { "${KC[@]}" -n "$NAMESPACE" "$@"; }

mkdir -p "$BACKUP_DIR"
if [ "$(df -P "$BACKUP_DIR" | awk 'NR==2 {print $6}')" = / ]; then
  warn "BACKUP_DIR $BACKUP_DIR is on the VM root disk (same physical HDD): not failure protection. Copy off-device."
fi

ts="$(date -u +%Y%m%dT%H%M%SZ)"
pg_out="$BACKUP_DIR/postgres-$ts.dump"
# $POSTGRES_* expand inside the container.
# shellcheck disable=SC2016
k exec postgres-0 -- sh -c 'pg_dump -Fc -U "$POSTGRES_USER" -d "$POSTGRES_DB"' > "$pg_out.partial"
mv "$pg_out.partial" "$pg_out"
# Verify the archive is readable before trusting it.
k exec -i postgres-0 -- pg_restore --list < "$pg_out" >/dev/null || die "pg_restore cannot read $pg_out"
pass "postgres dump $pg_out ($(du -h "$pg_out" | cut -f1))"

redis_out="$BACKUP_DIR/redis-$ts.rdb"
before="$(k exec redis-0 -- redis-cli LASTSAVE)"
k exec redis-0 -- redis-cli BGSAVE >/dev/null
for _ in $(seq 1 60); do
  [ "$(k exec redis-0 -- redis-cli LASTSAVE)" != "$before" ] && break
  sleep 1
done
k exec redis-0 -- cat /data/dump.rdb > "$redis_out.partial"
mv "$redis_out.partial" "$redis_out"
pass "redis snapshot $redis_out ($(du -h "$redis_out" | cut -f1))"

# Retention: keep the newest KEEP of each kind.
for kind in postgres redis; do
  find "$BACKUP_DIR" -maxdepth 1 -name "$kind-*" -type f | sort -r | tail -n +"$((KEEP + 1))" | while IFS= read -r old; do
    rm -f -- "$old"
    info "pruned $old"
  done
done

finish
