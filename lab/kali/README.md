# `lab/kali` — Attack the homelab from Kali

Tutorials and ready-to-run scripts for exercising the HOMELAB security controls
from the Kali VM. **Authorized, operator-owned targets only** — see
[`../ROE.md`](../ROE.md).

| File | What it is |
|---|---|
| [`attack-tutorial.en.md`](attack-tutorial.en.md) | Step-by-step tutorial (English) |
| [`attack-tutorial.zh-TW.md`](attack-tutorial.zh-TW.md) | 教學（繁體中文） |
| [`docs/catalogue.en.md`](docs/catalogue.en.md) / [`.zh-TW.md`](docs/catalogue.zh-TW.md) | **All 382 Kali tools by menu category** (EN + 繁中), from the VM's apt metadata |
| [`docs/`](docs/README.md) | Doc index: catalogue + per-app tutorials (`installed-apps.md`) + deep-dives |
| [`scripts/README.md`](scripts/README.md) | How to install, drive, and **chain** the tools |
| [`scripts/tool.sh`](scripts/tool.sh) | Run **any** installed tool with ROE banner + evidence |
| [`scripts/apps.sh`](scripts/apps.sh) | Launch **any** GUI app on the VNC desktop |
| [`scripts/install-tools.sh`](scripts/install-tools.sh) | Install by group or whole category (`cat:<slug>`) |
| [`scripts/toolkit.sh`](scripts/toolkit.sh) | Orchestrate/chain the common workflow → combined report |
| `scripts/_common.sh` | Shared config + helpers (sourced, not run; `TARGET` required) |
| `scripts/00-recon.sh` | Port-exposure recon |
| `scripts/10-api-test.sh` | API health + optional OWASP ZAP baseline |
| `scripts/20-mcp-auth.sh` | MCP bearer-token + Host-allowlist checks |
| `scripts/30-segmentation.sh` | DB / control-plane must be unreachable |
| `scripts/40-rate-limit.sh` | Controlled low-rate burst (not a DoS) |
| `scripts/run-all.sh` | Run every step and write dated evidence |

## Quick start (from the Kali VM)

```bash
git clone <this-repo> && cd HOMELAB/lab/kali/scripts   # or scp the scripts over
TARGET=<NODE_IP> ./run-all.sh                        # Shared-net node address
# with the valid MCP token (fetched on the node), to exercise the auth-pass path:
MCP_TOKEN=<token> TARGET=<NODE_IP> ./run-all.sh
```

Evidence is written to `~/lab-evidence/kali-attack-<timestamp>.md`. Copy it off
the VM with the `scp -o ProxyJump=...` line in [`../ROE.md`](../ROE.md).

## How this relates to the rest of `lab/`

- `lab/tests/*` are the same checks wired for the **isolated** lab segment
  (`10.66.6.10:30080/30081`) and the Ansible/Terraform bring-up.
- These `lab/kali/scripts/*` are the **hands-on, VM-run** version: parameterized
  by `TARGET`, safe to point at either the Shared-net node (`<NODE_IP>`) or the
  isolated gateway (`10.66.6.10`) once that segment is up.
- Beyond the fixed Phase-1 suite, [`scripts/toolkit.sh`](scripts/toolkit.sh) drives the
  broader Kali toolset (nmap, nuclei, nikto, ffuf, …) documented in [`docs/`](docs/README.md).
- The expected PASS/FAIL baseline and a worked run are in the tutorials.
