# local_migrate

Step scripts that take the homelab from a passing `preflight-host.sh` to a running deploy. They follow `docs/runbook.md` and `docs/access.md`.

Every script is safe to rerun. Without `--yes` a script only checks and prints what it would change. Each one has `--help`.

## Order

| Step | Where | Script | Gate |
|---|---|---|---|
| 1 | host | `01-host-power.sh --yes` | always-on power |
| 2 | host | `02-host-io-test.sh` | STOR-03 |
| 3 | host, VM shut down | `03-host-resize-vm-disk.sh --yes` (optional, 64 to 80 GiB) | GUEST-01 |
| 4 | host desktop | `04-host-utm-access.sh` (optional) | utmctl |
| 5 | guest console | `10-guest-bootstrap.sh --yes` (add `--grow-root` after step 3) | GUEST-01, NET-01 |
| 6 | dev Mac | `11-devmac-ssh-key.sh --copy-to USER@VM_IP` | key login |
| 7 | guest | `12-guest-tailscale.sh`, read the installer, then `--yes` | overlay |
| 8 | dev Mac | `13-devmac-ssh-config.sh --user USER --host TAILSCALE_IP --yes` | SSH-02 |
| 9 | guest, console logged in | `14-guest-harden-ssh.sh --yes` | SSH-04 |
| 10 | dev Mac, second terminal | `15-devmac-verify-ssh.sh` (later `--wan` off-LAN) | SSH-01..04 |
| 11 | guest | `20-guest-github-identity.sh --backup-dir DIR --yes` | GIT-01 |
| 12 | guest | `21-guest-k3s.sh --yes` | K3S-01 |
| 13 | guest | `22-guest-secrets.sh --yes` | secrets |
| 14 | dev Mac | `30-devmac-deploy.sh --dry-run`, then `--migrate --persistence` | DEPLOY-01, DATA-01/02 |
| 15 | guest (post-deploy hardening) | `23-guest-nodeport-firewall.sh --yes` | dashboard 30300 → tailscale0 only |
| 16 | guest (post-deploy hardening) | `24-guest-apiserver-firewall.sh --yes` | k3s 6443 → loopback + tailscale0 (closes the Kali 6443 finding) |

## Getting the scripts into the guest

The repository is public, so before the deploy key exists:

```bash
sudo apt update && sudo apt install -y git
git clone https://github.com/Jest-Test-Team/HOMELAB.git ~/HOMELAB
cd ~/HOMELAB/deploy/scripts/local_migrate
```

These scripts must be pushed to `main` first. From step 11 on, `/opt/homelab/repo` is the trusted copy that deploys use.

## Overrides

Environment variables read by `_common.sh`: `HOMELAB_VOLUME`, `VM_HOSTNAME` (default `utm-homelab`), `DEV_KEY`, `REPO_SLUG`, `K3S_VERSION`. Set `EXPECTED_DISK_GIB=64` if you keep the 64 GiB disk.
