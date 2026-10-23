#!/usr/bin/env bash
# P1 OpenSSH hardening for the Ubuntu guest. Run inside the guest.
#
#   configure-ssh.sh check  [--user U]           read-only report (default)
#   configure-ssh.sh install-key --user U FILE   append a verified PUBLIC key
#   configure-ssh.sh apply  --user U --console-confirmed
#   configure-ssh.sh rollback
#
# `apply` refuses to run unless the user already has a valid authorized key and
# you confirm a working UTM console session. It writes
# /etc/ssh/sshd_config.d/00-homelab.conf (00- so it wins over 50-cloud-init.conf;
# sshd keeps the first value it reads), validates with `sshd -t`, verifies the
# effective config with `sshd -T`, then reloads. Existing sessions are kept.
set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=deploy/scripts/lib.sh
. "$SCRIPT_DIR/lib.sh"

DROPIN=/etc/ssh/sshd_config.d/00-homelab.conf
MODE="${1:-check}"; [ $# -gt 0 ] && shift
VM_USER="${SUDO_USER:-$(id -un)}"
CONSOLE_OK=0
KEY_FILE=""

while [ $# -gt 0 ]; do
  case "$1" in
    --user) VM_USER="${2:?}"; shift 2 ;;
    --console-confirmed) CONSOLE_OK=1; shift ;;
    -h|--help) sed -n '2,13p' "$0"; exit 0 ;;
    *) KEY_FILE="$1"; shift ;;
  esac
done

[ "$(uname -s)" = Linux ] || die "run inside the Ubuntu guest"
command -v sshd >/dev/null 2>&1 || PATH="$PATH:/usr/sbin"
need_cmd sshd
getent passwd "$VM_USER" >/dev/null || die "user $VM_USER does not exist"
[ "$VM_USER" != root ] || die "refusing to configure root as the SSH user"

home="$(getent passwd "$VM_USER" | cut -d: -f6)"
auth_keys="$home/.ssh/authorized_keys"

count_keys() {
  local n=0 line
  [ -f "$auth_keys" ] || { echo 0; return; }
  while IFS= read -r line; do
    case "$line" in ''|'#'*) continue ;; esac
    if printf '%s\n' "$line" | ssh-keygen -lf - >/dev/null 2>&1; then n=$((n + 1)); fi
  done < "$auth_keys"
  echo "$n"
}

effective() { sudo sshd -T -C "user=$VM_USER,host=localhost,addr=127.0.0.1" 2>/dev/null | grep -iE "^$1 " | cut -d' ' -f2-; }

report() {
  info "user: $VM_USER, authorized_keys: $auth_keys"
  local n; n="$(count_keys)"
  [ "$n" -gt 0 ] && pass "SSH key(s) authorised for $VM_USER: $n" || warn "no valid authorized key for $VM_USER"
  if [ -d "$home/.ssh" ]; then
    local m; m="$(stat -c %a "$home/.ssh")"
    [ "$m" = 700 ] && pass "$home/.ssh mode 700" || warn "$home/.ssh mode $m, want 700"
  fi
  if [ -f "$auth_keys" ]; then
    local m; m="$(stat -c %a "$auth_keys")"
    [ "$m" = 600 ] && pass "authorized_keys mode 600" || warn "authorized_keys mode $m, want 600"
  fi
  sudo grep -qE '^[[:space:]]*Include[[:space:]]+/etc/ssh/sshd_config.d/\*\.conf' /etc/ssh/sshd_config \
    && pass "sshd_config includes sshd_config.d/*.conf" || warn "sshd_config has no Include for sshd_config.d; drop-in will be ignored"
  info "drop-ins (read in this order, first value wins):"
  sudo ls -1 /etc/ssh/sshd_config.d/ 2>/dev/null | sed 's/^/        /' || true
  sudo grep -HinE '^[[:space:]]*(PasswordAuthentication|KbdInteractiveAuthentication|PermitRootLogin)' \
    /etc/ssh/sshd_config /etc/ssh/sshd_config.d/*.conf 2>/dev/null | sed 's/^/        /' || true
  for k in permitrootlogin pubkeyauthentication passwordauthentication kbdinteractiveauthentication x11forwarding allowusers; do
    info "effective $k = $(effective "$k")"
  done
  systemctl is-active --quiet ssh || systemctl is-active --quiet ssh.socket \
    && pass "ssh service/socket active" || fail "ssh is not active"
}

case "$MODE" in
  check)
    report
    finish
    ;;

  install-key)
    [ -n "$KEY_FILE" ] && [ -f "$KEY_FILE" ] || die "usage: install-key --user U /path/to/key.pub"
    grep -q 'PRIVATE KEY' "$KEY_FILE" && die "$KEY_FILE is a PRIVATE key; only .pub contents may be installed"
    [ "$(grep -cvE '^[[:space:]]*(#|$)' "$KEY_FILE")" -eq 1 ] || die "expected exactly one public key line in $KEY_FILE"
    ssh-keygen -lf "$KEY_FILE" >/dev/null || die "$KEY_FILE is not a valid public key"
    key_body="$(awk '!/^[[:space:]]*(#|$)/ {print $1" "$2}' "$KEY_FILE")"
    sudo -u "$VM_USER" install -d -m 700 "$home/.ssh"
    sudo -u "$VM_USER" touch "$auth_keys"
    sudo chmod 600 "$auth_keys"
    if sudo grep -qF "$key_body" "$auth_keys"; then
      info "key already present: $(ssh-keygen -lf "$KEY_FILE")"
    else
      # shellcheck disable=SC2024 # the key file is read as the invoking user on purpose
      sudo tee -a "$auth_keys" < "$KEY_FILE" >/dev/null
      pass "installed $(ssh-keygen -lf "$KEY_FILE")"
    fi
    info "now test from the dev Mac BEFORE running apply:"
    info "  ssh -i ~/.ssh/homelab_utm_ed25519 -o IdentitiesOnly=yes $VM_USER@<IP> 'hostname; id; uname -m'"
    ;;

  apply)
    [ "$CONSOLE_OK" -eq 1 ] || die "confirm a working UTM console login first, then pass --console-confirmed"
    [ "$(count_keys)" -gt 0 ] || die "no valid authorized key for $VM_USER; refusing to disable passwords"
    ts="$(date -u +%Y%m%dT%H%M%SZ)"
    backup="/etc/ssh/backup-$ts"
    sudo cp -a /etc/ssh "$backup.tmp" && sudo mv "$backup.tmp" "$backup"
    info "backed up /etc/ssh to $backup"
    tmp="$(mktemp)"
    cat > "$tmp" <<EOF
# Managed by HOMELAB deploy/scripts/configure-ssh.sh ($ts).
# 00- prefix: sshd keeps the first value read, so this beats 50-cloud-init.conf.
PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no
KbdInteractiveAuthentication no
X11Forwarding no
AllowUsers $VM_USER
EOF
    sudo install -m 644 -o root -g root "$tmp" "$DROPIN"; rm -f "$tmp"
    if ! sudo sshd -t; then
      sudo rm -f "$DROPIN"
      die "sshd -t failed; drop-in removed, nothing reloaded"
    fi
    bad=0
    [ "$(effective passwordauthentication)" = no ] || { fail "effective passwordauthentication is not 'no'"; bad=1; }
    [ "$(effective kbdinteractiveauthentication)" = no ] || { fail "effective kbdinteractiveauthentication is not 'no'"; bad=1; }
    [ "$(effective permitrootlogin)" = no ] || { fail "effective permitrootlogin is not 'no'"; bad=1; }
    [ "$(effective pubkeyauthentication)" = yes ] || { fail "effective pubkeyauthentication is not 'yes'"; bad=1; }
    if [ "$bad" -ne 0 ]; then
      sudo rm -f "$DROPIN"
      die "effective config does not match; drop-in removed, nothing reloaded. Inspect earlier overrides with: configure-ssh.sh check"
    fi
    sudo systemctl reload ssh
    pass "sshd reloaded with $DROPIN (existing sessions unaffected)"
    info "KEEP THIS SESSION OPEN. From a SECOND terminal on the dev Mac verify:"
    info "  ssh utm-homelab 'hostname'                                   # must succeed"
    info "  ssh -o PubkeyAuthentication=no -o PreferredAuthentications=password utm-homelab   # must be denied"
    info "If anything fails: configure-ssh.sh rollback  (or from the UTM console)"
    ;;

  rollback)
    if [ -f "$DROPIN" ]; then
      sudo rm -f "$DROPIN"
      sudo sshd -t && sudo systemctl reload ssh
      pass "removed $DROPIN and reloaded sshd"
    else
      info "$DROPIN not present; nothing to roll back"
    fi
    ;;

  *) die "unknown mode: $MODE (check|install-key|apply|rollback)" ;;
esac
