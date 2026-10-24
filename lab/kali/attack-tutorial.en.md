# Attacking the HOMELAB from Kali — Tutorial (English)

> **Scope & ethics.** Every target here is the operator's own homelab. Run these
> tests only against assets you own, per [`../ROE.md`](../ROE.md). The scripts are
> non-destructive and low-rate. Do not point them at anything else.

This tutorial walks through a Phase-1 security assessment run **from the Kali VM**
against the k3s homelab. It validates that the controls hold and produces evidence.

---

## 0. What you are testing

The homelab exposes, on purpose, only two application ports to the lab:

- **api** NodePort `30080` — the REST API.
- **mcp** NodePort `30081` — the MCP server (bearer-token auth + Host allow-list).

Everything else must be **unreachable** from an attacker VM:

- PostgreSQL `5432`, Redis `6379` — datastores, cluster-internal only.
- dashboard NodePort `30300` — restricted to the `tailscale0` interface.
- k3s API `6443` — control plane; restrict it with
  `deploy/scripts/local_migrate/24-guest-apiserver-firewall.sh`.

| Control | Expected result | Why it matters |
|---|---|---|
| Port exposure | only 22 / 30080 / 30081 open | minimal attack surface |
| API auth/health | 200 on version/health; 404 (not 5xx) on junk | no info leak |
| MCP no/bad token | `401` | authentication enforced |
| MCP forged `Host` | `403` | DNS-rebinding guard |
| MCP valid token + correct `Host` | not `401` | auth genuinely passes |
| PostgreSQL / Redis | connection blocked | network segmentation |
| dashboard `30300` | blocked from the Shared net | tailnet-only exposure |
| k3s API `6443` | blocked | control-plane isolation |
| Rate burst (30×) | api stays `200` | resilience, no easy DoS |

---

## 1. Prerequisites

On the Kali VM (`kali` / `kali` by default):

```bash
sudo apt update && sudo apt install -y nmap curl   # zaproxy optional
```

Get the scripts onto Kali — either clone the repo, or copy just the scripts from
your Mac:

```bash
# from the Mac (adjust the Kali IP)
scp -r lab/kali/scripts kali@192.168.64.7:~/kali-scripts
```

Decide your `TARGET`:

- **Shared network (current setup):** the homelab node, e.g. `192.168.64.4`.
- **Isolated lab segment (after `lab/` bring-up):** the gateway `10.66.6.10`.

---

## 2. Run it

### All steps at once (recommended)

```bash
cd ~/kali-scripts
TARGET=192.168.64.4 ./run-all.sh
```

This runs every step and writes `~/lab-evidence/kali-attack-<timestamp>.md`.

### Step by step

```bash
TARGET=192.168.64.4 ./00-recon.sh          # which ports are open
TARGET=192.168.64.4 ./10-api-test.sh       # api healthy, no info leak
TARGET=192.168.64.4 ./20-mcp-auth.sh       # MCP auth + Host allow-list
TARGET=192.168.64.4 ./30-segmentation.sh   # DB / 6443 must be blocked
TARGET=192.168.64.4 ./40-rate-limit.sh 30  # controlled burst
```

### Exercising the valid-token MCP path

`401` (no/bad token) proves rejection. To also prove a **valid** token is
accepted, fetch the token on the node and pass it in:

```bash
# on the homelab node (over SSH):
sudo k3s kubectl -n homelab get secret mcp-auth -o jsonpath='{.data.token}' | base64 -d; echo
# then from Kali:
MCP_TOKEN='<paste-token>' TARGET=192.168.64.4 ./20-mcp-auth.sh
```

Expected with a valid token: forged `Host` → `403`, correct `Host` → not `401`
(usually `406`, which just means auth passed and the request body wasn't a full
MCP call).

---

## 3. Reading the results

A healthy baseline on the **isolated** lab segment is **all PASS**. On the current
**Shared** network you will see one expected `FAIL`:

```
  FAIL k3s API :6443 -> open (expected closed)
```

That is the real finding: k3s binds `6443` on all interfaces, and on the UTM
Shared network another VM can reach it. Two fixes:

1. **Guest firewall (non-disruptive):** on the homelab node, run
   `deploy/scripts/local_migrate/24-guest-apiserver-firewall.sh --yes`. It drops
   `6443` on the management interface while leaving loopback, Tailscale and
   in-cluster (ClusterIP → DNAT) traffic untouched. Re-run `30-segmentation.sh`:
   the `6443` line should flip to **PASS**.
2. **Isolated segment:** move Kali onto the host-only lab NIC (`lab/` scripts); the
   `ubuntu-lab` nftables role already drops `6443` there.

---

## 4. Collect evidence

```bash
# from the Mac, pull the evidence off Kali via the Ubuntu jump host:
scp -o ProxyJump=<vm-user>@utm-homelab \
  kali@10.66.6.20:lab-evidence/'*' /Volumes/HOMELAB/Backups/lab-evidence/
```

(On the Shared network, `scp -i ~/.ssh/homelab_utm_ed25519 kali@192.168.64.7:lab-evidence/'*' …`.)

---

## 5. Phase-2 ideas (not in these scripts)

- Deliberately vulnerable targets on the isolated segment (DVWA, juice-shop).
- Detection engineering: Zeek / Suricata on the lab bridge, alert on the scans
  above. See `implementation.md` for the roadmap.
