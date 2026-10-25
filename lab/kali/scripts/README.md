# Kali scripts — how to use them

Scripts to install and drive the Kali tools catalogued in
[`../docs/applications.en.md`](../docs/applications.en.md) (繁中:
[`applications.zh-TW.md`](../docs/applications.zh-TW.md)) against the **operator-owned**
HOMELAB lab only ([`../../ROE.md`](../../ROE.md)). All runs are non-destructive and
rate-limited.

Run them **on the Kali VM**. Copy the folder over first:

```bash
scp -i ~/.ssh/homelab_utm_ed25519 -r lab/kali/scripts kali@<KALI_IP>:~/kali-scripts
ssh -i ~/.ssh/homelab_utm_ed25519 kali@<KALI_IP>
cd ~/kali-scripts && chmod +x *.sh
export TARGET=<NODE_IP>          # the homelab node you own
```

## The scripts

| Script | Purpose |
|---|---|
| [`tool.sh`](tool.sh) | Run **any** installed Kali CLI tool with the ROE banner + evidence capture (`tool.sh <name> [args]`). |
| [`exercise-all.sh`](exercise-all.sh) | **Use ALL applications in one command** — drives every installed tool via `tool.sh` and every GUI via `apps.sh`, writes a coverage report. |
| [`apps.sh`](apps.sh) | Generic launcher — `open`/`info`/`list` **any** installed desktop (GUI) app (reads live `.desktop` entries). |
| [`toolkit.sh`](toolkit.sh) | Orchestrate & **chain** the common workflow (recon/web/vuln/…) into one report. |
| [`install-tools.sh`](install-tools.sh) | Install tools by group or **whole category** (`cat:<slug>`), or `--all`. |
| [`list-apps.sh`](list-apps.sh) | Enumerate **every** installed app on the VM → regenerates `../docs/installed-apps.md`. |
| [`run-all.sh`](run-all.sh) + `00–40` | The fixed Phase-1 control suite and its steps. |

### Three ways to drive tools — pick by need

| You want to… | Use | Covers |
|---|---|---|
| Run **one specific tool** (any of the 382) | `./tool.sh nmap -Pn -sV "$TARGET"` | the whole catalogue |
| Open a **GUI app** | `./apps.sh open "Wireshark"` | every desktop app |
| Run a **standard multi-tool sweep** | `./toolkit.sh chain recon,web,vuln` | the common workflow |

Install first: `./install-tools.sh cat:web` (a whole category) or `./install-tools.sh --all`.

### Use *all* applications at once — `exercise-all.sh`

```bash
./exercise-all.sh            # drive every runnable tool via tool.sh (safe --help/--version)
./exercise-all.sh --real     # run node-targetable tools with REAL args (needs TARGET)
./exercise-all.sh --gui      # launch every GUI app via apps.sh in waves, verify, close
./exercise-all.sh --all      # CLI + GUI
```
Writes a PASS/total coverage report to `~/lab-evidence/`. This is the single script that exercises the whole installed toolset; the latest verified run is summarised in [`../docs/verification.md`](../docs/verification.md).
(`_common.sh` holds the shared config/helpers the Phase-1 steps source; `TARGET` is **required**.)

### List what's actually installed

```bash
./list-apps.sh                 # markdown inventory of every menu app on this VM
./list-apps.sh --tsv           # raw name<TAB>categories<TAB>exec
```

## 1. Install tools

```bash
./install-tools.sh --list                 # show the groups and their packages
./install-tools.sh                         # default groups: recon vuln web exploit sniff extra
./install-tools.sh recon web               # only those groups
./install-tools.sh --all                   # the full kali-linux-default metapackage (large)
```

Groups: `recon vuln web pass exploit sniff rev forensics extra`.

## 2. Drive a single tool group with `toolkit.sh`

```bash
./toolkit.sh list                          # modules + which tools are installed
./toolkit.sh recon                         # nmap sweep + versions + arp-scan + whatweb
./toolkit.sh recon <NODE_IP>               # target as a positional arg (overrides $TARGET)
./toolkit.sh discovery                     # arp-scan + nmap host scan + smbmap (445 shut?)
./toolkit.sh osint                         # whois + dnsrecon + theHarvester (own assets)
./toolkit.sh web                           # whatweb + ffuf content discovery + nikto
./toolkit.sh vuln                          # nuclei (templated) + nikto
./toolkit.sh exploit                       # metasploit aux HTTP scan (validation only)
./toolkit.sh sniff eth0 40                 # tcpdump 40 packets to/from $TARGET -> .pcap
./toolkit.sh search nginx 1.2              # searchsploit lookup (no target needed)
./toolkit.sh pass                          # SSH login control test — GATED (CONFIRM=yes)
HASHFILE=h.txt ./toolkit.sh crack          # offline john crack — GATED (hashes you own)
CARVE_FILE=fw.bin ./toolkit.sh forensics   # binwalk/foremost carve — GATED (file you own)
./toolkit.sh launch burpsuite              # open ANY installed GUI app on the VNC desktop
```

### Using ANY application (GUI or CLI) — `apps.sh`

`apps.sh` drives **every** app in [`../docs/installed-apps.md`](../docs/installed-apps.md) by
reading the live `.desktop` entries, so it always matches what's installed:

```bash
./apps.sh list                             # all apps (name, exec, categories)
./apps.sh list Settings                    # filter by a Category word
./apps.sh info "Disks"                      # show an app's Exec/Categories/Comment
./apps.sh open "Firefox ESR" http://<NODE_IP>:30080   # launch on the VNC desktop
DRYRUN=1 ./apps.sh open wireshark          # show what would run, launch nothing
```

(`toolkit.sh launch <exec>` does the same for a single tool inside the attack workflow.)

**Coverage check (on the VM):** after installing the full toolset (450 menu apps), `apps.sh` resolved and could launch **all 450/450** (dry-run, 0 misses) — i.e. it drives every installed application, not a subset.
GUI apps need the VNC/xrdp desktop up — see `../../docs/operations.zh-TW.md` §4.

Each command writes a timestamped report to `$EVIDENCE_DIR` (default `~/lab-evidence/`)
and streams it to the console.

## 3. Combine tools — the `chain` argument

`chain` runs several modules **in order** and writes **one** combined report:

```bash
./toolkit.sh chain recon,web,vuln          # comma-separated, no spaces
./toolkit.sh all                           # alias for: chain recon,web,vuln
```

A module whose tool isn't installed prints `[skip] … install: …` and the chain
continues — so a chain never aborts halfway. Combine this with `install-tools.sh`
to go from a bare VM to a full recon→web→vuln sweep in two commands.

## 4. Tuning (environment variables)

| Var | Default | Meaning |
|---|---|---|
| `TARGET` | *(required)* | Node/host to test — operator-owned only. |
| `API_PORT` `MCP_PORT` `DASH_PORT` | `30080` `30081` `30300` | App NodePorts probed. |
| `PG_PORT` `REDIS_PORT` `APISERVER_PORT` | `5432` `6379` `6443` | Ports that **must** be shut (recon asserts this). |
| `RATE` | `50` | Req/sec ceiling for noisy tools (`nuclei -rl`, `ffuf -rate`). |
| `EVIDENCE_DIR` | `~/lab-evidence` | Where reports/pcaps are written. |
| `CONFIRM` | *(unset)* | Must be `yes` to run the `pass` (hydra) module. |

```bash
RATE=20 ./toolkit.sh vuln                   # gentler scan
API_PORT=8080 ./toolkit.sh web              # non-default port
CONFIRM=yes ./toolkit.sh pass               # opt in to the password control test
```

## ⚠️ The `pass` module (password attacks)

`toolkit.sh pass` runs `hydra` against SSH with a **two-entry wrong-password list** to
confirm the login control reacts (lockout/refusal). It generates failed logins, so it is
**gated behind `CONFIRM=yes`** and must only target a host you own. It is a control test,
not credential cracking — do not enlarge the list or point it elsewhere.

## Evidence

Reports land in `~/lab-evidence/` on Kali. Pull them to the Mac and feed them to the
encrypted analysis pipeline ([`../../crypto/README.md`](../../crypto/README.md)):

```bash
scp -i ~/.ssh/homelab_utm_ed25519 "kali@<KALI_IP>:lab-evidence/*" /Volumes/HOMELAB/Backups/lab-evidence/
```

Never commit raw evidence to git — it's git-ignored for a reason.

## Worked example — the drivers running real tools (captured on the VM)

Installed `nmap`+`whatweb` on the Kali VM and drove them through the scripts against the
lab node (`<NODE_IP>`); the controls held (6443 filtered, 5432 closed, only 22/30080/30081 open):

```text
# tool.sh driving real nmap
$ TARGET=<NODE_IP> ./tool.sh nmap -Pn -T4 -p 22,30080,30081,5432,6443 <NODE_IP>
PORT      STATE    SERVICE
22/tcp    open     ssh
5432/tcp  closed   postgresql        # DB control holds
6443/tcp  filtered sun-sr-https      # k3s API control holds
30080/tcp open     unknown           # api NodePort
30081/tcp open     unknown           # mcp NodePort
log: /home/kali/lab-evidence/tool-nmap-20261025T045108Z.md

# toolkit.sh chain recon,web — real nmap + whatweb, one combined report
$ TARGET=<NODE_IP> ./toolkit.sh chain recon,web
### recon …  22/tcp open ssh (OpenSSH 10.5p1), 30080/30081 open, 30300 filtered
### web   …  whatweb fingerprint of http://<NODE_IP>:30080
report: ~/lab-evidence/toolkit-chain-<ts>.md
```

Verified live through `tool.sh` — **35 diverse real tools driven against the node/self-test**: nmap, masscan, netdiscover, arping, fping, hping3, nbtscan, dnsrecon, dnsenum, fierce, dmitry, whatweb, wafw00f, sslscan, sslyze, nikto, nuclei, wapiti, uniscan, ffuf, gobuster, wfuzz, sqlmap, whois, onesixtyone, smtp-user-enum, netexec, theHarvester, hydra, medusa, john, hashcat, hashid, crunch, cewl (and `toolkit.sh chain recon,web,vuln` running nmap+whatweb+ffuf+nikto+nuclei) — all against the node, writing evidence to `~/lab-evidence/`. The same
`tool.sh <name>` pattern drives any of the 382 tools in [`../docs/tutorials.en.md`](../docs/tutorials.en.md); `apps.sh open "<Name>"` launches any GUI app.
