# Kali applications — catalogue, introductions & step-by-step tutorials (English)

> 繁體中文版：[`applications.zh-TW.md`](applications.zh-TW.md) · Index: [`README.md`](README.md)

**Scope / rules of engagement.** Every command below is meant to run **only against
assets you own** — the HOMELAB node (`$TARGET`, a placeholder `<NODE_IP>`) and the Kali
VM itself — per [`../../ROE.md`](../../ROE.md). All examples are non-destructive and
low-rate. Do **not** point these at anything else.

This Kali VM (`Kali-Red5`) is a **minimal** install, so most tools below are *not*
present yet. Install what you need with [`../scripts/install-tools.sh`](../scripts/install-tools.sh)
(or `sudo apt install <pkg>`). The whisker menu groups tools the same way this document
does (01-Reconnaissance, 09-Discovery, 12-Command and Control, 13-Exfiltration, …).

How to read an entry: **what it is** → **install** → **step-by-step** against the lab.
`$TARGET` comes from [`../scripts/_common.sh`](../scripts/_common.sh); export it once:

```bash
export TARGET=<NODE_IP>        # the homelab node you own
```

---

## 00 · Terminal basics (what the menu bar shows: Terminal, Files, Firefox)

| App | What it is |
|---|---|
| **qterminal / xfce4-terminal** | The terminal emulator. Everything below runs here. |
| **Firefox ESR** | Browser — proxy it through Burp/ZAP to inspect the lab's web/API. |
| **Thunar (Files)** | File manager for browsing `~/lab-evidence`. |
| **Engrampa** | Archive manager — unpack wordlists, bundle evidence. |

---

## 01 · Reconnaissance / Information Gathering

### nmap — network & service scanner
- **What it is:** the core port/service/OS scanner; the first tool on any engagement.
- **Install:** `sudo apt install -y nmap`
- **Step-by-step (lab):**
  1. Fast port sweep: `nmap -Pn -T3 --top-ports 100 "$TARGET"`
  2. Service + version on the open ports: `nmap -Pn -sV -p 22,30080,30081,30300 "$TARGET"`
  3. Confirm the controls hold — DB/k3s should be filtered:
     `nmap -Pn -p 5432,6379,6443 "$TARGET"` → expect `filtered`/`closed`.
  4. Safe default scripts: `nmap -Pn -sV --script "default and safe" -p 30080,30081 "$TARGET"`

### masscan — mass TCP scanner (fast)
- **What it is:** asynchronous scanner for very large ranges; much faster than nmap, less detail.
- **Install:** `sudo apt install -y masscan`
- **Step-by-step:** `sudo masscan "$TARGET"/32 -p1-65535 --rate 1000` then feed the open ports back into `nmap -sV`.

### arp-scan / netdiscover — layer-2 host discovery
- **What it is:** find live hosts on the local segment via ARP (works even when ICMP is blocked).
- **Install:** `sudo apt install -y arp-scan netdiscover`
- **Step-by-step:** `sudo arp-scan --localnet` — confirm only the node + gateway + Kali appear on the lab segment.

### dnsrecon / dnsenum / fierce — DNS enumeration
- **What it is:** enumerate DNS records, attempt zone transfers, brute subdomains.
- **Install:** `sudo apt install -y dnsrecon dnsenum fierce`
- **Step-by-step (only for a domain you own):** `dnsrecon -d homelab.local -n "$TARGET"`

### whatweb — web stack fingerprint
- **What it is:** identifies the server, framework, and headers of a web app.
- **Install:** `sudo apt install -y whatweb`
- **Step-by-step:** `whatweb -a 3 "http://$TARGET:30080/"` — note the server banner; confirm no version leak.

### theHarvester — OSINT email/host gathering
- **What it is:** pulls emails, subdomains and hosts from public sources. OSINT, read-only.
- **Install:** `sudo apt install -y theharvester`
- **Step-by-step (own domain only):** `theHarvester -d example.com -b duckduckgo`

### enum4linux-ng / smbmap — SMB enumeration
- **What it is:** enumerate Windows/Samba shares, users, policies. (The lab has no SMB — use to *prove* 445 is shut.)
- **Install:** `sudo apt install -y enum4linux-ng smbmap`
- **Step-by-step:** `smbmap -H "$TARGET"` → expect connection refused (no SMB exposed = good).

---

## 02 · Vulnerability Analysis

### nuclei — templated vulnerability scanner
- **What it is:** fast, community-templated scanner for CVEs, misconfigs, exposures. The modern workhorse.
- **Install:** `sudo apt install -y nuclei && nuclei -update-templates`
- **Step-by-step (lab):**
  1. `nuclei -u "http://$TARGET:30080" -tags cve,exposure,misconfiguration -rl 50`
  2. Review findings; `-severity low,medium,high,critical` to filter. Rate-limit (`-rl`) to stay gentle.

### nikto — web server scanner
- **What it is:** classic web server misconfiguration / dangerous-file scanner. Noisy but thorough.
- **Install:** `sudo apt install -y nikto`
- **Step-by-step:** `nikto -host "http://$TARGET:30080" -maxtime 120s`

### wpscan — WordPress scanner (N/A here)
- **What it is:** WordPress-specific enumeration. The lab runs no WordPress; listed for completeness.
- **Install:** `sudo apt install -y wpscan`

### lynis — local hardening audit
- **What it is:** audits the *local* host's hardening posture (run it on Kali or on a box you own).
- **Install:** `sudo apt install -y lynis`
- **Step-by-step:** `sudo lynis audit system`

---

## 03 · Web Application Analysis

### Burp Suite (Community) — intercepting proxy
- **What it is:** the standard web proxy for intercepting, replaying and tampering HTTP(S).
- **Install:** `sudo apt install -y burpsuite` · GUI — needs the desktop (VNC/xrdp).
- **Step-by-step:**
  1. Launch `burpsuite &`, set the browser proxy to `127.0.0.1:8080`, install Burp's CA in Firefox.
  2. Browse `http://$TARGET:30080`; send interesting requests to **Repeater**; test auth on the MCP endpoint (`:30081`).

### OWASP ZAP — open-source web scanner/proxy
- **What it is:** Burp's open-source counterpart; has an automated scanner + proxy.
- **Install:** `sudo apt install -y zaproxy`
- **Step-by-step (headless):** `zaproxy -cmd -quickurl "http://$TARGET:30080" -quickout ~/lab-evidence/zap.html`

### ffuf / gobuster / dirb — content & path fuzzing
- **What it is:** brute-force directories, files, vhosts and parameters with a wordlist.
- **Install:** `sudo apt install -y ffuf gobuster dirb seclists`
- **Step-by-step:**
  1. `ffuf -u "http://$TARGET:30080/FUZZ" -w /usr/share/seclists/Discovery/Web-Content/common.txt -mc 200,301,302,401 -rate 50`
  2. `gobuster dir -u "http://$TARGET:30080" -w /usr/share/wordlists/dirb/common.txt -q`

### sqlmap — automated SQL injection
- **What it is:** detects and exploits SQL injection; use only on endpoints you own.
- **Install:** `sudo apt install -y sqlmap`
- **Step-by-step:** `sqlmap -u "http://$TARGET:30080/api/items?id=1" --batch --level 2 --risk 1` (stop at detection; do not dump real data).

### wfuzz / commix / whatweb — misc web
- **wfuzz:** parameter fuzzing (`sudo apt install -y wfuzz`).
- **commix:** command-injection tester (`sudo apt install -y commix`) — detection only in the lab.

---

## 04 · Database Assessment
- **sqlmap** (above) is the primary tool. The lab's PostgreSQL (5432) must be **unreachable** from Kali — verify with `nmap -p 5432` and `psql -h "$TARGET"` (expect timeout/refused). `sudo apt install -y postgresql-client` for `psql`.

---

## 05 · Password Attacks  ⚠️ opt-in only

> These generate failed logins. Run **only** against your own services, and only with
> `CONFIRM=yes`. Keep lists tiny; this is a control test, not real cracking.

### hydra — network login brute-forcer
- **What it is:** online brute-force/credential-spray for SSH, HTTP, etc.
- **Install:** `sudo apt install -y hydra`
- **Step-by-step (own SSH only, tiny list):**
  `hydra -l test -P <(printf 'wrong1\nwrong2\n') -t 1 -f ssh://"$TARGET"` → expect lockout/refusal = control holds.

### john / hashcat — offline hash cracking
- **What it is:** crack password hashes you already lawfully possess (e.g. a test hash).
- **Install:** `sudo apt install -y john hashcat`
- **Step-by-step:** `echo 'user:$1$abc$...' > h.txt && john h.txt` (demo hash only).

### crunch / cewl / hashid — wordlists & hash id
- **crunch:** generate wordlists. **cewl:** scrape a site into a wordlist. **hashid:** identify a hash type.
- **Install:** `sudo apt install -y crunch cewl hashid wordlists`

---

## 06 · Wireless Attacks (N/A — no Wi-Fi adapter in the VM)
- **aircrack-ng / wifite / reaver / kismet** require a wireless NIC in monitor mode. The UTM VM has none; documented for completeness. Install only if you pass through a USB Wi-Fi adapter.

---

## 07 · Reverse Engineering
- **radare2 / rizin** — CLI disassembler/debugger (`sudo apt install -y radare2`). `r2 ./binary`.
- **gdb** — debugger (`sudo apt install -y gdb`).
- **ghidra** — NSA decompiler suite, GUI (`sudo apt install -y ghidra`).
- Use on binaries you own (e.g. the homelab-api image's binary) to study, not to attack third parties.

---

## 08 · Exploitation Tools

### Metasploit Framework — exploitation platform
- **What it is:** the exploitation/validation framework (modules, payloads, sessions).
- **Install:** `sudo apt install -y metasploit-framework`
- **Step-by-step (lab, validation only):**
  1. `sudo msfdb init && msfconsole -q`
  2. `db_nmap -sV -p 22,30080,30081 $TARGET`
  3. Use auxiliary *scanner* modules only (e.g. `auxiliary/scanner/http/http_version`); do not launch real exploits against production.

### searchsploit / exploitdb — offline exploit DB
- **What it is:** searchable local copy of Exploit-DB; look up PoCs by product/version.
- **Install:** `sudo apt install -y exploitdb`
- **Step-by-step:** `searchsploit nginx 1.2` — read-only lookup to inform (not run) testing.

### msfvenom / set — payloads & social engineering
- **msfvenom:** payload generator (part of metasploit). **set (Social-Engineer Toolkit):** phishing/SE simulations — lab-internal only, with consent.

---

## 09 · Sniffing & Spoofing / Discovery

### Wireshark / tshark — packet capture & analysis
- **What it is:** capture and dissect traffic. GUI (wireshark) + CLI (tshark).
- **Install:** `sudo apt install -y wireshark tshark` (add yourself: `sudo usermod -aG wireshark kali`).
- **Step-by-step:** capture the handshake while you curl the API —
  `sudo tshark -i eth0 -f "host $TARGET and tcp port 30080" -c 50 -w ~/lab-evidence/cap.pcap`

### tcpdump — CLI sniffer
- **Install:** `sudo apt install -y tcpdump`
- **Step-by-step:** `sudo tcpdump -ni eth0 host "$TARGET" and port 30081 -c 20`

### bettercap / ettercap / responder — MITM & spoofing ⚠️
- **What they are:** ARP spoofing, MITM, LLMNR/NBT-NS poisoning. **Disruptive** — only on an isolated lab segment you own, never the shared network.
- **Install:** `sudo apt install -y bettercap ettercap-graphical responder`

---

## 10 · Post-Exploitation
- **weevely** (PHP web shell generator), **powersploit**, **mimikatz** (Windows creds) — relevant after a *foothold on a box you own*. Not applicable to the current black-box lab; listed so the category is complete.

---

## 11 · Forensics
- **binwalk** — carve firmware/files (`sudo apt install -y binwalk`): `binwalk -e firmware.bin`.
- **foremost** — recover files by header (`sudo apt install -y foremost`).
- **autopsy / sleuthkit** — disk forensics GUI/CLI.
- **volatility3** — memory forensics (`pipx install volatility3`).
- Use on images you own (e.g. analysing a VM snapshot).

---

## 12 · Command and Control (menu category) ⚠️ lab-internal only
- **What it is:** C2 frameworks model an attacker's post-compromise control channel. Use **only**
  inside your isolated lab, between hosts you own, to test detection — never against third parties.
- **Tools:** `sliver`, `empire`/`starkiller`, `covenant`, `merlin`. Most are not in the minimal
  install; e.g. `sudo apt install -y sliver`. Treat beacons/listeners as sensitive — do not expose them.

---

## 13 · Exfiltration (menu category) ⚠️ detection testing only
- **What it is:** tools/techniques to move data out covertly — used here to **test whether your
  egress controls notice**. The lab's egress is restricted; prove it.
- **Tools:** `dnscat2` / `iodine` (DNS tunnelling), `nc`/`ncat` (plain), `cloakify`, plus the
  repo's own encrypted pipeline. Example control test: try a DNS tunnel out and confirm it fails/alerts.

---

## 16 · Services & Other Tools
- **postgresql, ssh, apache2, nginx** — start local services for testing (`sudo systemctl start ssh`).
- **openvas / greenbone** — full vulnerability-management scanner (heavy; `sudo gvm-setup`).
- **CyberChef, Burp, ZAP** — data transformation & web testing utilities.

---

## Reporting (write-ups)
- **cherrytree / dradis / faraday** — organise findings and generate reports.
- In this repo, evidence lands in `~/lab-evidence/` on Kali, then flows through the encrypted
  analysis pipeline ([`../../crypto/README.md`](../../crypto/README.md)). Keep raw evidence out of git.

---

## Quick reference — map tool → repo script

| Goal | Repo script | Tools it drives |
|---|---|---|
| Baseline attack suite (Phase-1 controls) | [`../scripts/run-all.sh`](../scripts/run-all.sh) | curl, nmap-style TCP checks |
| Install the tools in this doc | [`../scripts/install-tools.sh`](../scripts/install-tools.sh) | apt |
| Drive / chain individual tools | [`../scripts/toolkit.sh`](../scripts/toolkit.sh) | nmap, whatweb, nuclei, nikto, ffuf, tcpdump, searchsploit, hydra |

See [`../scripts/README.md`](../scripts/README.md) for the toolkit's arguments and chaining.
