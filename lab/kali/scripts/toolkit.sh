#!/usr/bin/env bash
# toolkit.sh — one entry point that drives the Kali tools from
# lab/kali/docs/applications.*.md against the operator-owned lab, and lets you
# COMBINE them into a chain with a single combined evidence report.
#
# Scope: operator-owned assets only (lab/ROE.md). Non-destructive, rate-limited.
#
# Usage:
#   ./toolkit.sh list                       # modules + whether each tool is installed
#   ./toolkit.sh recon   [TARGET]           # nmap sweep + versions + arp-scan + whatweb
#   ./toolkit.sh web     [TARGET]           # whatweb + ffuf content discovery + nikto
#   ./toolkit.sh vuln    [TARGET]           # nuclei (templated) + nikto
#   ./toolkit.sh sniff   [IFACE] [COUNT]    # tcpdump COUNT packets to/from TARGET
#   ./toolkit.sh pass    [TARGET]           # hydra SSH control test  (needs CONFIRM=yes)
#   ./toolkit.sh search  <query>            # searchsploit lookup (no target)
#   ./toolkit.sh chain   recon,web,vuln     # run modules in order -> ONE report
#   ./toolkit.sh all                        # alias for: chain recon,web,vuln
#
# Target & ports come from the environment (see _common.sh): TARGET is required
# for probing modules, or pass it as the first module argument.
#   export TARGET=<NODE_IP>
#   API_PORT=30080 MCP_PORT=30081 ./toolkit.sh web
#
# Output: a timestamped markdown report under $EVIDENCE_DIR (default ~/lab-evidence),
# also streamed to the console. Copy it off the VM per lab/ROE.md.
set -Eeuo pipefail

# ---- config (no _common.sh: these commands must work without TARGET too) ---
API_PORT="${API_PORT:-30080}"
MCP_PORT="${MCP_PORT:-30081}"
DASH_PORT="${DASH_PORT:-30300}"
PG_PORT="${PG_PORT:-5432}"
REDIS_PORT="${REDIS_PORT:-6379}"
APISERVER_PORT="${APISERVER_PORT:-6443}"
EVIDENCE_DIR="${EVIDENCE_DIR:-$HOME/lab-evidence}"
RATE="${RATE:-50}"            # requests/sec ceiling for noisy tools

die()  { printf 'error: %s\n' "$*" >&2; exit 1; }
have() { command -v "$1" >/dev/null 2>&1; }
hdr()  { printf '\n### %s\n' "$*"; }
note() { printf '%s\n' "$*"; }
# run CMD... : echo it, run it, never abort the chain on a tool's non-zero exit
run()  { printf '$ %s\n' "$*"; "$@" 2>&1 || printf '(exit %s)\n' "$?"; }
skip() { printf '[skip] %s not installed — install: %s\n' "$1" "$2"; }

require_target() {
  [ -n "${TARGET:-}" ] || die "set TARGET=<node-ip> or pass it as an argument (operator-owned only)"
}
banner() {
  printf '%s\n' "--- AUTHORIZED LAB TEST (lab/ROE.md) --- target=${TARGET:-<unset>}"
}

# ---------------------------------------------------------------------------
# Modules. Each prints markdown to stdout; the caller tees to the report.
# ---------------------------------------------------------------------------
mod_recon() {
  require_target
  hdr "recon — host, ports, services ($TARGET)"
  if have nmap; then
    run nmap -Pn -T3 --top-ports 100 "$TARGET"
    run nmap -Pn -sV -p "22,$API_PORT,$MCP_PORT,$DASH_PORT" "$TARGET"
    hdr "recon — controls that must be shut (expect filtered/closed)"
    run nmap -Pn -p "$PG_PORT,$REDIS_PORT,$APISERVER_PORT" "$TARGET"
  else
    skip nmap "sudo apt install -y nmap"
  fi
  if have arp-scan; then run sudo arp-scan --localnet; else skip arp-scan "sudo apt install -y arp-scan"; fi
  if have whatweb; then run whatweb -a 1 "http://$TARGET:$API_PORT/"; else skip whatweb "sudo apt install -y whatweb"; fi
}

mod_web() {
  require_target
  hdr "web — fingerprint + content discovery ($TARGET:$API_PORT)"
  if have whatweb; then run whatweb -a 3 "http://$TARGET:$API_PORT/"; else skip whatweb "sudo apt install -y whatweb"; fi
  if have ffuf; then
    local wl=/usr/share/seclists/Discovery/Web-Content/common.txt
    [ -f "$wl" ] || wl=/usr/share/wordlists/dirb/common.txt
    if [ -f "$wl" ]; then
      run ffuf -u "http://$TARGET:$API_PORT/FUZZ" -w "$wl" -mc 200,301,302,401,403 -rate "$RATE" -s
    else
      note "[skip] ffuf: no wordlist found (install seclists or dirb)"
    fi
  else
    skip ffuf "sudo apt install -y ffuf seclists"
  fi
  if have nikto; then run nikto -host "http://$TARGET:$API_PORT" -maxtime 120s; else skip nikto "sudo apt install -y nikto"; fi
}

mod_vuln() {
  require_target
  hdr "vuln — templated scan ($TARGET:$API_PORT)"
  if have nuclei; then
    run nuclei -u "http://$TARGET:$API_PORT" -tags cve,exposure,misconfiguration -rl "$RATE" -silent
  else
    skip nuclei "sudo apt install -y nuclei && nuclei -update-templates"
  fi
  if have nikto; then run nikto -host "http://$TARGET:$API_PORT" -Tuning 2 -maxtime 90s; else skip nikto "sudo apt install -y nikto"; fi
}

mod_sniff() {
  require_target
  local iface="${SNIFF_IFACE:-eth0}" count="${SNIFF_COUNT:-40}"
  hdr "sniff — $count packets on $iface to/from $TARGET"
  if have tcpdump; then
    mkdir -p "$EVIDENCE_DIR"
    local pcap; pcap="$EVIDENCE_DIR/cap-$(date -u +%Y%m%dT%H%M%SZ).pcap"
    run sudo tcpdump -ni "$iface" host "$TARGET" -c "$count" -w "$pcap"
    note "pcap: $pcap"
  else
    skip tcpdump "sudo apt install -y tcpdump"
  fi
}

mod_pass() {
  require_target
  hdr "pass — SSH login control test ($TARGET)"
  if [ "${CONFIRM:-}" != "yes" ]; then
    note "[gated] password attacks generate failed logins. Re-run with CONFIRM=yes to proceed."
    note "        example: CONFIRM=yes ./toolkit.sh pass $TARGET"
    return 0
  fi
  if have hydra; then
    # tiny wrong-password list: this is a control test (expect lockout/refusal), not cracking
    run hydra -l test -P <(printf 'wrongpw1\nwrongpw2\n') -t 1 -f -w 5 "ssh://$TARGET"
  else
    skip hydra "sudo apt install -y hydra"
  fi
}

mod_search() {
  hdr "search — exploit-db lookup: $*"
  [ "$#" -gt 0 ] || die "search needs a query, e.g. ./toolkit.sh search nginx 1.2"
  if have searchsploit; then run searchsploit "$@"; else skip searchsploit "sudo apt install -y exploitdb"; fi
}

list_modules() {
  printf 'modules (tool install status):\n'
  printf '  %-8s nmap=%s arp-scan=%s whatweb=%s\n'  recon  "$(have nmap && echo y || echo n)"   "$(have arp-scan && echo y || echo n)" "$(have whatweb && echo y || echo n)"
  printf '  %-8s whatweb=%s ffuf=%s nikto=%s\n'     web    "$(have whatweb && echo y || echo n)" "$(have ffuf && echo y || echo n)"     "$(have nikto && echo y || echo n)"
  printf '  %-8s nuclei=%s nikto=%s\n'              vuln   "$(have nuclei && echo y || echo n)"  "$(have nikto && echo y || echo n)"
  printf '  %-8s tcpdump=%s\n'                      sniff  "$(have tcpdump && echo y || echo n)"
  printf '  %-8s hydra=%s   (gated: CONFIRM=yes)\n' pass   "$(have hydra && echo y || echo n)"
  printf '  %-8s searchsploit=%s\n'                 search "$(have searchsploit && echo y || echo n)"
  printf '\nchain example: ./toolkit.sh chain recon,web,vuln\n'
  printf 'install tools: ./install-tools.sh --list\n'
}

# Run one module by name (used by both single commands and chain)
dispatch_module() {
  case "$1" in
    recon) mod_recon ;;
    web)   mod_web ;;
    vuln)  mod_vuln ;;
    sniff) mod_sniff ;;
    pass)  mod_pass ;;
    *)     die "unknown module: $1 (recon|web|vuln|sniff|pass)" ;;
  esac
}

# Combine modules: run each in order, in THIS shell, under one report.
run_chain() {
  local IFS=,; local mods m; read -r -a mods <<<"$1"
  for m in "${mods[@]}"; do dispatch_module "$m"; done
}

usage() { sed -n '2,33p' "${BASH_SOURCE[0]}" | sed 's/^#\{0,1\} \{0,1\}//'; }

# Wrap a run in a timestamped report that is also streamed to the console.
report() {
  local label="$1"; shift
  mkdir -p "$EVIDENCE_DIR"
  local out; out="$EVIDENCE_DIR/toolkit-$label-$(date -u +%Y%m%dT%H%M%SZ).md"
  {
    printf '# Kali toolkit — %s — %s\n\n' "$label" "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    # shellcheck disable=SC2016  # backticks here are literal markdown, not command substitution
    printf -- '- Attacker: `%s` (%s)\n' "$(hostname)" "$(uname -r)"
    # shellcheck disable=SC2016
    printf -- '- Target: `%s`  ports(api:%s mcp:%s dash:%s)\n' "${TARGET:-<unset>}" "$API_PORT" "$MCP_PORT" "$DASH_PORT"
    printf -- '- Scope: operator-owned (lab/ROE.md), non-destructive\n'
    banner
    "$@"
  } 2>&1 | tee "$out"
  printf '\nreport: %s\n' "$out"
}

# ---------------------------------------------------------------------------
main() {
  local cmd="${1:-}"; [ -n "$cmd" ] || { list_modules; exit 0; }
  shift || true
  case "$cmd" in
    list|-l|--list) list_modules ;;
    -h|--help|help) usage ;;
    search)         report search mod_search "$@" ;;
    recon|web|vuln|pass)
      # optional positional TARGET override for probing modules
      if [ -n "${1:-}" ]; then export TARGET="$1"; shift || true; fi
      require_target
      report "$cmd" dispatch_module "$cmd" ;;
    sniff)
      [ -n "${1:-}" ] && SNIFF_IFACE="$1"
      [ -n "${2:-}" ] && SNIFF_COUNT="$2"
      export SNIFF_IFACE="${SNIFF_IFACE:-eth0}" SNIFF_COUNT="${SNIFF_COUNT:-40}"
      require_target
      report sniff mod_sniff ;;
    chain|all)
      local list="recon,web,vuln"
      [ "$cmd" = chain ] && list="${1:-recon,web,vuln}"
      require_target
      report chain run_chain "$list" ;;
    *) die "unknown command: $cmd (try: ./toolkit.sh list)" ;;
  esac
}
main "$@"
