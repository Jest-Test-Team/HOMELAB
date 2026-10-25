#!/usr/bin/env bash
# apps.sh — drive ANY of the applications installed on this Kali VM. Unlike
# toolkit.sh (which orchestrates the offensive *workflow*), this is the generic
# launcher for the full desktop application set: it reads the live .desktop
# entries, so it always matches exactly what is installed (regenerate the
# inventory with ./list-apps.sh). Run ON the Kali VM.
#
#   ./apps.sh list [CATEGORY]       # list every app (optionally filter by a Category word)
#   ./apps.sh info  <name|exec>     # show an app's Exec/Categories/Comment
#   ./apps.sh open  <name|exec> [args...]   # launch it on the VNC/xrdp desktop (DISPLAY=:1)
#   ./apps.sh exec  <name>          # print the resolved Exec command (no launch)
#
#   DRYRUN=1 ./apps.sh open "Disks" # show what would run, launch nothing
#   DISPLAY=:1 is assumed (the VNC desktop). GUI apps need that desktop up.
#
# Examples:
#   ./apps.sh open "Firefox ESR" https://<NODE_IP>:30080
#   ./apps.sh open wireshark
#   ./apps.sh list Settings          # just the settings dialogs
set -Eeuo pipefail

APPDIR="${APPDIR:-/usr/share/applications}"
die() { printf 'error: %s\n' "$*" >&2; exit 1; }

# field 1=Name 2=Exec(first word) 3=Categories, tab-separated, visible apps only
enum() {
  local d name ex cats
  for d in "$APPDIR"/*.desktop; do
    [ -f "$d" ] || continue
    grep -q '^NoDisplay=true' "$d" && continue
    grep -q '^Hidden=true' "$d" && continue
    name=$(grep -m1 '^Name=' "$d" | cut -d= -f2-)
    ex=$(grep -m1 '^Exec=' "$d" | cut -d= -f2- | awk '{print $1}')
    cats=$(grep -m1 '^Categories=' "$d" | cut -d= -f2-)
    [ -n "$name" ] && printf '%s\t%s\t%s\n' "$name" "$ex" "$cats"
  done | sort -u
}

# resolve a query (exact Name, or Exec basename) to a .desktop path
find_desktop() {
  local q="$1" d name ex
  for d in "$APPDIR"/*.desktop; do
    [ -f "$d" ] || continue
    name=$(grep -m1 '^Name=' "$d" | cut -d= -f2-)
    ex=$(grep -m1 '^Exec=' "$d" | cut -d= -f2- | awk '{print $1}')
    if [ "$name" = "$q" ] || [ "$(basename "${ex:-}")" = "$q" ] || [ "${ex:-}" = "$q" ]; then
      printf '%s\n' "$d"; return 0
    fi
  done
  return 1
}

# the runnable Exec line with desktop field codes (%u %F …) stripped
exec_line() { grep -m1 '^Exec=' "$1" | cut -d= -f2- | sed 's/%[a-zA-Z]//g; s/[[:space:]]*$//'; }

cmd="${1:-list}"; shift || true
case "$cmd" in
  list|-l|--list)
    filter="${1:-}"
    enum | while IFS=$'\t' read -r name ex cats; do
      [ -z "$filter" ] || case "$cats" in *"$filter"*) : ;; *) continue ;; esac
      printf '%-34s %-28s %s\n' "$name" "$ex" "$cats"
    done ;;
  info)
    q="${1:-}"; [ -n "$q" ] || die "info needs an app name, e.g. ./apps.sh info Disks"
    d="$(find_desktop "$q")" || die "no app matches: $q (try ./apps.sh list)"
    grep -E '^(Name|GenericName|Exec|Categories|Comment)=' "$d" ;;
  exec)
    q="${1:-}"; [ -n "$q" ] || die "exec needs an app name"
    d="$(find_desktop "$q")" || die "no app matches: $q"
    exec_line "$d" ;;
  open|launch)
    q="${1:-}"; shift || true
    [ -n "$q" ] || die "open needs an app name/exec, e.g. ./apps.sh open \"Disks\"  (./apps.sh list)"
    d="$(find_desktop "$q")" || die "no app matches: $q (try ./apps.sh list)"
    line="$(exec_line "$d")"; [ -n "$line" ] || die "no Exec in $d"
    [ "$#" -gt 0 ] && line="$line $*"
    export DISPLAY="${DISPLAY:-:1}"
    if [ "${DRYRUN:-}" = "1" ]; then printf 'would run (DISPLAY=%s): %s\n' "$DISPLAY" "$line"; exit 0; fi
    setsid sh -c "$line" >/dev/null 2>&1 &
    printf 'launched: %s  (pid %s, DISPLAY=%s)\n' "$q" "$!" "$DISPLAY" ;;
  -h|--help|help)
    awk 'NR>1 && /^[^#]/{exit} NR>1{sub(/^# ?/,"");print}' "${BASH_SOURCE[0]}" ;;
  *) die "unknown command: $cmd (list|info|exec|open)" ;;
esac
