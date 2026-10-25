#!/usr/bin/env bash
# list-apps.sh — enumerate every visible desktop application on THIS Kali VM and
# print a markdown inventory. Run ON the Kali VM; it regenerates the data behind
# lab/kali/docs/installed-apps.md (the exhaustive, VM-sourced application list).
#
#   ./list-apps.sh                 # markdown table to stdout
#   ./list-apps.sh > apps.md       # save it, then scp back to the repo
#   ./list-apps.sh --tsv           # raw name<TAB>categories<TAB>exec (for re-generating docs)
#
# Standalone: no TARGET, no sudo needed.
set -Eeuo pipefail

MODE="${1:-md}"

emit_tsv() {
  local d name cats ex
  for d in /usr/share/applications/*.desktop; do
    [ -f "$d" ] || continue
    grep -q '^NoDisplay=true' "$d" && continue
    grep -q '^Hidden=true' "$d" && continue
    name=$(grep -m1 '^Name=' "$d" | cut -d= -f2-)
    cats=$(grep -m1 '^Categories=' "$d" | cut -d= -f2-)
    ex=$(grep -m1 '^Exec=' "$d" | cut -d= -f2- | awk '{print $1}')
    [ -n "$name" ] && printf '%s\t%s\t%s\n' "$name" "${cats:-—}" "${ex:-—}"
  done | sort -u
}

case "$MODE" in
  --tsv) emit_tsv ;;
  md|*)
    printf '# Installed applications on %s — generated %s\n\n' "$(hostname)" "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    printf 'Visible menu applications: **%s**  ·  installed packages: **%s**\n\n' \
      "$(emit_tsv | wc -l | tr -d ' ')" "$(dpkg --get-selections 2>/dev/null | grep -c install || echo '?')"
    printf '| Application | Categories | Exec |\n|---|---|---|\n'
    emit_tsv | while IFS=$'\t' read -r name cats ex; do
      # shellcheck disable=SC2016  # backticks are literal markdown, not command substitution
      printf '| %s | %s | `%s` |\n' "$name" "$cats" "$ex"
    done
    ;;
esac
