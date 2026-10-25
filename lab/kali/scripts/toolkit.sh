#!/usr/bin/env bash
# toolkit.sh — one entry point that drives the Kali tools from
# lab/kali/docs/applications.*.md against the operator-owned lab, and lets you
# COMBINE them into a chain with a single combined evidence report.
#
# Scope: operator-owned assets only (lab/ROE.md). Non-destructive, rate-limited.
#
# Usage:
#   ./toolkit.sh list                       # modules + whether each tool is installed
#   ./toolkit.sh recon     [TARGET]         # nmap sweep + versions + arp-scan + whatweb
#   ./toolkit.sh discovery [TARGET]         # arp-scan + nmap host scan + smbmap (445 shut?)
#   ./toolkit.sh osint     [TARGET]         # whois + dnsrecon + theHarvester (OWN assets)
#   ./toolkit.sh web       [TARGET]         # whatweb + ffuf content discovery + nikto
#   ./toolkit.sh vuln      [TARGET]         # nuclei (templated) + nikto
#   ./toolkit.sh exploit   [TARGET]         # metasploit aux HTTP scan (validation only)
#   ./toolkit.sh sniff     [IFACE] [COUNT]  # tcpdump COUNT packets to/from TARGET
#   ./toolkit.sh pass      [TARGET]         # hydra SSH control test  (needs CONFIRM=yes)
#   ./toolkit.sh crack                      # john offline crack      (needs HASHFILE=)
#   ./toolkit.sh forensics                  # binwalk/foremost carve  (needs CARVE_FILE=)
#   ./toolkit.sh search    <query>          # searchsploit lookup (no target)
#   ./toolkit.sh launch    <app> [args]     # open any installed GUI app on the VNC desktop
#   ./toolkit.sh chain  recon,discovery,web,vuln   # run modules in order -> ONE report
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

# ---- audit (append-only, shared homelab log; never committed) --------------
AUDIT="${AUDIT:-1}"
AUDIT_DIR="${AUDIT_DIR:-$EVIDENCE_DIR/audit}"
AUDIT_LOG="${AUDIT_LOG:-$AUDIT_DIR/homelab-audit.log}"
AUDIT_JSONL="${AUDIT_JSONL:-$AUDIT_DIR/homelab-audit.jsonl}"
AUDIT_RUN_ID="${AUDIT_RUN_ID:-$(date -u +%Y%m%dT%H%M%SZ)-$$}"
_aj() { local s=${1-}; s=${s//\\/\\\\}; s=${s//\"/\\\"}; s=${s//$'\n'/\\n}; printf '%s' "$s"; }
audit() {  # audit LEVEL STEP MESSAGE
  [ "$AUDIT" = 1 ] || return 0
  mkdir -p "$AUDIT_DIR" 2>/dev/null && chmod 700 "$AUDIT_DIR" 2>/dev/null || true
  local ts; ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  printf '%s  run=%s  %-5s step=%-14s %s\n' "$ts" "$AUDIT_RUN_ID" "$1" "toolkit:$2" "$3" >>"$AUDIT_LOG" 2>/dev/null || true
  printf '{"ts":"%s","run":"%s","level":"%s","step":"toolkit:%s","target":"%s","operator":"%s","host":"%s","msg":"%s"}\n' \
    "$ts" "$AUDIT_RUN_ID" "$1" "$(_aj "$2")" "$(_aj "${TARGET:-}")" "$(_aj "$(id -un 2>/dev/null)")" "$(_aj "$(hostname 2>/dev/null)")" "$(_aj "$3")" \
    >>"$AUDIT_JSONL" 2>/dev/null || true
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

mod_osint() {
  require_target
  local dom="${OSINT_DOMAIN:-homelab.local}"
  hdr "osint — passive intel on $TARGET / $dom (own assets only)"
  if have whois;    then run whois "$TARGET"; else skip whois "sudo apt install -y whois"; fi
  if have dnsrecon; then run dnsrecon -n "$TARGET" -d "$dom"; else skip dnsrecon "sudo apt install -y dnsrecon"; fi
  if have theHarvester; then run theHarvester -d "$dom" -b duckduckgo; else skip theHarvester "sudo apt install -y theharvester"; fi
}

mod_discovery() {
  require_target
  hdr "discovery — live hosts + exposed services ($TARGET)"
  if have arp-scan; then run sudo arp-scan --localnet; else skip arp-scan "sudo apt install -y arp-scan"; fi
  if have nmap;     then run nmap -Pn -sn "$TARGET"; else skip nmap "sudo apt install -y nmap"; fi
  # prove SMB (445) is shut — connection refused here is the PASS condition
  if have smbmap;   then run smbmap -H "$TARGET"; else skip smbmap "sudo apt install -y smbmap"; fi
}

mod_exploit() {
  require_target
  hdr "exploit — msf auxiliary HTTP scan ($TARGET:$API_PORT) — validation only, no live exploits"
  if have msfconsole; then
    run msfconsole -q -x "use auxiliary/scanner/http/http_version; set RHOSTS $TARGET; set RPORT $API_PORT; run; exit"
  else
    skip msfconsole "sudo apt install -y metasploit-framework"
  fi
  if have searchsploit; then note "tip: ./toolkit.sh search <product version>  (offline exploit-db lookup)"; fi
}

mod_crack() {
  # offline, local — no target. Needs HASHFILE of hashes you lawfully own.
  hdr "crack — offline hash cracking (local)"
  local hf="${HASHFILE:-}"
  if [ -z "$hf" ]; then
    note "[gated] set HASHFILE=/path/to/hashes (hashes you lawfully own), e.g. HASHFILE=h.txt ./toolkit.sh crack"
    return 0
  fi
  [ -f "$hf" ] || die "HASHFILE not found: $hf"
  if have john; then run john "$hf"; run john --show "$hf"; else skip john "sudo apt install -y john"; fi
  if have hashid; then run hashid -m "$hf"; fi
}

mod_forensics() {
  # carve a file you own. Needs CARVE_FILE.
  hdr "forensics — carve a file you own"
  local f="${CARVE_FILE:-}"
  if [ -z "$f" ]; then
    note "[gated] set CARVE_FILE=/path/to/file, e.g. CARVE_FILE=fw.bin ./toolkit.sh forensics"
    return 0
  fi
  [ -f "$f" ] || die "CARVE_FILE not found: $f"
  if have binwalk; then run binwalk -e "$f"; else skip binwalk "sudo apt install -y binwalk"; fi
  if have foremost; then
    mkdir -p "$EVIDENCE_DIR"
    local od; od="$EVIDENCE_DIR/foremost-$(date -u +%Y%m%dT%H%M%SZ)"
    run foremost -i "$f" -o "$od"
  else
    skip foremost "sudo apt install -y foremost"
  fi
}

# Launch ANY installed GUI application on the VNC/xrdp desktop (DISPLAY=:1).
# This is how you "use" the graphical apps (burpsuite, wireshark, firefox, …).
mod_launch() {
  local app="${1:-}"; shift || true
  [ -n "$app" ] || die "launch needs an app, e.g. ./toolkit.sh launch burpsuite  (see: ./list-apps.sh)"
  have "$app" || die "$app not on PATH — install it (install-tools.sh / apt). GUI apps need the VNC or xrdp desktop up."
  export DISPLAY="${DISPLAY:-:1}"
  note "launching '$app' on DISPLAY=$DISPLAY (connect via VNC: see docs/operations.zh-TW.md §4)"
  setsid "$app" "$@" >/dev/null 2>&1 &
  note "started pid $!"
}

yn() { if have "$1"; then printf y; else printf n; fi; }
list_modules() {
  printf 'modules (tool install status):\n'
  printf '  %-10s nmap=%s arp-scan=%s whatweb=%s\n'   recon     "$(yn nmap)" "$(yn arp-scan)" "$(yn whatweb)"
  printf '  %-10s whatweb=%s ffuf=%s nikto=%s\n'      web       "$(yn whatweb)" "$(yn ffuf)" "$(yn nikto)"
  printf '  %-10s nuclei=%s nikto=%s\n'               vuln      "$(yn nuclei)" "$(yn nikto)"
  printf '  %-10s whois=%s dnsrecon=%s theHarvester=%s\n' osint "$(yn whois)" "$(yn dnsrecon)" "$(yn theHarvester)"
  printf '  %-10s arp-scan=%s nmap=%s smbmap=%s\n'    discovery "$(yn arp-scan)" "$(yn nmap)" "$(yn smbmap)"
  printf '  %-10s msfconsole=%s searchsploit=%s\n'    exploit   "$(yn msfconsole)" "$(yn searchsploit)"
  printf '  %-10s tcpdump=%s\n'                       sniff     "$(yn tcpdump)"
  printf '  %-10s hydra=%s   (gated: CONFIRM=yes)\n'  pass      "$(yn hydra)"
  printf '  %-10s john=%s hashid=%s   (gated: HASHFILE=)\n'  crack     "$(yn john)" "$(yn hashid)"
  printf '  %-10s binwalk=%s foremost=%s (gated: CARVE_FILE=)\n' forensics "$(yn binwalk)" "$(yn foremost)"
  printf '  %-10s searchsploit=%s\n'                  search    "$(yn searchsploit)"
  printf '  %-10s (opens any installed GUI app on the VNC desktop)\n' launch
  printf '\nchain example: ./toolkit.sh chain recon,discovery,web,vuln\n'
  printf 'launch a GUI app: ./toolkit.sh launch burpsuite   (full inventory: ./list-apps.sh)\n'
  printf 'install tools:    ./install-tools.sh --list\n'
}

# Run one module by name (used by both single commands and chain)
dispatch_module() {
  case "$1" in
    recon)     mod_recon ;;
    web)       mod_web ;;
    vuln)      mod_vuln ;;
    osint)     mod_osint ;;
    discovery) mod_discovery ;;
    exploit)   mod_exploit ;;
    sniff)     mod_sniff ;;
    pass)      mod_pass ;;
    crack)     mod_crack ;;
    forensics) mod_forensics ;;
    *)         die "unknown module: $1 (recon|discovery|web|vuln|osint|exploit|sniff|pass|crack|forensics)" ;;
  esac
}

# Combine modules: run each in order, in THIS shell, under one report.
# IFS=, is scoped to the read only (prefix assignment) so it does not leak into the
# modules' own word-splitting / command echoing.
run_chain() {
  local mods m
  IFS=',' read -r -a mods <<<"$1"
  for m in "${mods[@]}"; do dispatch_module "$m"; done
}

# Print the comment header (line 2 until the first non-comment line).
usage() { awk 'NR>1 && /^[^#]/{exit} NR>1{sub(/^# ?/,"");print}' "${BASH_SOURCE[0]}"; }

# Wrap a run in a timestamped report that is also streamed to the console.
report() {
  local label="$1"; shift
  mkdir -p "$EVIDENCE_DIR"
  local out; out="$EVIDENCE_DIR/toolkit-$label-$(date -u +%Y%m%dT%H%M%SZ).md"
  audit BEGIN "$label" "module '$label' started (target=${TARGET:-none})"
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
  audit END "$label" "module '$label' finished report=$out"
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
    launch)         mod_launch "$@" ;;
    crack|forensics)
      # local, no target (gated by HASHFILE / CARVE_FILE)
      report "$cmd" dispatch_module "$cmd" ;;
    recon|web|vuln|pass|osint|discovery|exploit)
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
