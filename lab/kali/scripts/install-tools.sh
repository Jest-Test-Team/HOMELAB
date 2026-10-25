#!/usr/bin/env bash
# Install the Kali tools documented in lab/kali/docs/applications.*.md.
# This VM ships as a MINIMAL install, so the offensive toolset is not present yet.
#
#   ./install-tools.sh                 # install the default groups (recon vuln web exploit sniff extra)
#   ./install-tools.sh recon web       # install only the named group(s)
#   ./install-tools.sh cat:web         # install a WHOLE Kali menu category (kali-tools-web)
#   ./install-tools.sh cat:passwords cat:forensics   # several categories
#   ./install-tools.sh --all           # install the full kali-linux-default metapackage (large)
#   ./install-tools.sh --list          # print the groups and their packages, install nothing
#
# Groups are curated short-lists; cat:<slug> installs an entire category from the
# catalogue (lab/kali/docs/catalogue.en.md), e.g. cat:web cat:wireless cat:exploitation.
#
# Run on the Kali VM (needs sudo/apt). Idempotent: apt skips what is already present.
# Standalone: does NOT source _common.sh (no TARGET needed to install).
set -Eeuo pipefail

info() { printf '  %s\n' "$*"; }
pass() { printf '  [ok] %s\n' "$*"; }
die()  { printf 'error: %s\n' "$*" >&2; exit 1; }
hr()   { printf '\n== %s ==\n' "$*"; }

# ---- tool groups (apt package names) --------------------------------------
ALL_GROUPS="recon vuln web pass exploit sniff rev forensics extra"
DEFAULT_GROUPS="recon vuln web exploit sniff extra"

group_pkgs() {
  case "$1" in
    recon)     echo "nmap masscan arp-scan netdiscover dnsrecon dnsenum fierce whatweb theharvester enum4linux-ng smbmap" ;;
    vuln)      echo "nuclei nikto wpscan lynis" ;;
    web)       echo "burpsuite zaproxy ffuf gobuster dirb seclists sqlmap wfuzz commix" ;;
    pass)      echo "hydra john hashcat crunch cewl hashid wordlists" ;;
    exploit)   echo "metasploit-framework exploitdb" ;;
    sniff)     echo "wireshark tshark tcpdump bettercap ettercap-graphical responder" ;;
    rev)       echo "radare2 gdb" ;;
    forensics) echo "binwalk foremost sleuthkit" ;;
    extra)     echo "postgresql-client httpie jq netcat-openbsd" ;;
    *)         return 1 ;;
  esac
}

list_groups() {
  hr "tool groups"
  for g in $ALL_GROUPS; do
    printf '  %-10s %s\n' "$g" "$(group_pkgs "$g")"
  done
  printf '\n  default groups: %s\n' "$DEFAULT_GROUPS"
  printf '\n  whole categories: cat:<slug> installs kali-tools-<slug>. Slugs:\n'
  printf '    information-gathering vulnerability web database passwords wireless 802-11\n'
  printf '    bluetooth rfid sdr reverse-engineering exploitation sniffing-spoofing\n'
  printf '    post-exploitation forensics reporting social-engineering fuzzing voip\n'
  printf '    hardware crypto-stego gpu recover detect protect respond windows-resources top10\n'
}

case "${1:-}" in
  --list|-l) list_groups; exit 0 ;;
esac

command -v apt-get >/dev/null 2>&1 || die "apt-get not found — run this on the Kali VM"

if [ "${1:-}" = "--all" ]; then
  info "installing the full kali-linux-default metapackage (this is large)…"
  sudo apt-get update
  sudo apt-get install -y kali-linux-default
  pass "kali-linux-default installed"
  exit 0
fi

# Which groups?
if [ "$#" -gt 0 ]; then WANT="$*"; else WANT="$DEFAULT_GROUPS"; fi

# Validate and collect packages
PKGS=""
for g in $WANT; do
  case "$g" in
    cat:*) PKGS="$PKGS kali-tools-${g#cat:}" ;;   # whole menu category metapackage
    *)
      p="$(group_pkgs "$g" || true)"
      [ -n "$p" ] || die "unknown group: $g (see --list, or use cat:<slug> for a full category)"
      PKGS="$PKGS $p" ;;
  esac
done

info "groups:$([ "$#" -gt 0 ] && echo " (requested)") $WANT"
info "packages:$PKGS"
sudo apt-get update
# shellcheck disable=SC2086  # intentional word-splitting of the package list
sudo apt-get install -y $PKGS
pass "installed groups: $WANT"
info "catalogue + tutorials: lab/kali/docs/applications.en.md (繁中: applications.zh-TW.md)"
