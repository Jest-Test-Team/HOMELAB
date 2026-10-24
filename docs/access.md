# Access

How the development Mac reaches the UTM Ubuntu VM. No router port forwards are used or allowed.

## Recorded values

Fill these in from read-only commands. Do not guess. Tailscale `100.x` addresses are private overlay addresses, not public IPs.

| Item | Value | Source command |
|---|---|---|
| VM login user (`<vm-user>`) | `<vm-user>` (hostname `<vm-hostname>`) | `id -un` (guest) |
| UTM network mode | Shared (QEMU backend, virtio-net, MAC <vm-mac-redacted>) | UTM → VM settings → Network |
| VM LAN IPv4 (Bridged only) | _TBD_ / N/A | `ip -4 -br addr` (guest); DHCP reservation on router |
| VM Shared-mode IPv4 | 192.168.64.<N> (DHCP; was .5 on one boot, so not stable) | `ip -4 -br addr` (guest) |
| Tailscale hostname | `utm-homelab` | `tailscale status` |
| Tailscale IPv4 / MagicDNS | `<tailscale-ip>` / `utm-homelab` (tailnet `<your-tailnet>`); dev Mac is <dev-mac-tailscale-ip> | `tailscale ip -4` (guest) |
| Dev Mac SSH key | `~/.ssh/homelab_utm_ed25519` | `ssh-keygen -lf ~/.ssh/homelab_utm_ed25519.pub` |
| Key fingerprint | `SHA256:<dev-key-fingerprint-redacted>` (no passphrase yet: add one with `ssh-keygen -p`) | as above |
| GitHub repo | `Jest-Test-Team/HOMELAB` (public) | `git remote -v` on the dev Mac, as configured by the operator |
| Container registry | `ghcr.io/jest-test-team/homelab-{api,mcp,worker}` (public, anonymous pull verified 2026-10-23) | `publish-arm64` runs |
| VM deploy key fingerprint | N/A: org has deploy keys disabled; VM pulls anonymously over HTTPS (unused key `SHA256:<unused-guest-key-fingerprint-redacted>` left in the guest) | `ssh-keygen -lf ~/.ssh/github_homelab_ro.pub` (guest) |

## Paths

| Path | Route | When |
|---|---|---|
| LAN direct | dev Mac → VM private LAN IP → OpenSSH :22 | only when UTM **Bridged** works |
| LAN via overlay | dev Mac → Tailscale IP → OpenSSH :22 | always; works with UTM Shared/NAT |
| WAN | dev Mac (off-LAN) → Tailscale IP → OpenSSH :22 | always; no port forward |
| Console | UTM window on the M1 Pro host | recovery; never depends on network |

Tailscale is transport only. OpenSSH still does user and key authentication. `tailscale up --ssh` is **not** used in v1.

## One-time setup

### 1. Dev Mac key

```bash
ssh-keygen -t ed25519 -a 100 -f ~/.ssh/homelab_utm_ed25519 -C 'dev-mac-to-utm-homelab'
```

Use a passphrase and let the macOS keychain hold it (`ssh-add --apple-use-keychain ~/.ssh/homelab_utm_ed25519`).

### 2. Guest: OpenSSH + key (from the UTM console)

```bash
sudo apt update && sudo apt install -y openssh-server git curl ca-certificates jq
sudo systemctl enable --now ssh
# copy ONLY the .pub to the guest (paste into a file, or use ssh-copy-id while passwords still work)
./deploy/scripts/configure-ssh.sh install-key --user <vm-user> /tmp/homelab_utm_ed25519.pub
./deploy/scripts/configure-ssh.sh check --user <vm-user>
```

### 3. Tailscale on both machines

Guest (review the script before running it, per your policy):

```bash
curl -fsSL https://tailscale.com/install.sh -o /tmp/tailscale-install.sh
less /tmp/tailscale-install.sh
sudo sh /tmp/tailscale-install.sh
sudo tailscale up --hostname=utm-homelab      # opens an auth URL; the operator approves it
tailscale ip -4
```

Dev Mac: install the Tailscale app and log in to the **same** tailnet.

Tailnet policy: add a grant, without replacing the existing policy, that lets only the operator's identity reach `utm-homelab` on `tcp:22`, then run the policy tests in the admin console. Example fragment to adapt:

```jsonc
// tailnet policy file: ADD to the existing "grants" array, do not overwrite
{
  "src": ["autogroup:admin"],          // or the operator's user/group
  "dst": ["tag:homelab"],              // tag the VM node with tag:homelab
  "ip":  ["tcp:22"]
}
```

### 4. Dev Mac `~/.ssh/config`

```sshconfig
Host utm-homelab
    HostName <TAILSCALE-IP-OR-MAGICDNS-NAME>
    User <vm-user>
    IdentityFile ~/.ssh/homelab_utm_ed25519
    IdentitiesOnly yes
    ServerAliveInterval 30
    ServerAliveCountMax 3

# Only if UTM Bridged mode works and the router has a DHCP reservation.
Host utm-homelab-lan
    HostName <PRIVATE-LAN-IP>
    User <vm-user>
    IdentityFile ~/.ssh/homelab_utm_ed25519
    IdentitiesOnly yes
```

### 5. Verify, then harden

```bash
ssh utm-homelab 'hostname; id; uname -m'            # SSH-02
ssh utm-homelab-lan 'hostname; id; uname -m'        # SSH-01 (Bridged only)
```

Only after both work and the UTM console is logged in:

```bash
ssh utm-homelab
./deploy/scripts/configure-ssh.sh apply --user <vm-user> --console-confirmed
```

Keep that session open. From a second terminal, check SSH-04:

```bash
ssh utm-homelab hostname                                                   # succeeds
ssh -o PubkeyAuthentication=no -o PreferredAuthentications=password utm-homelab   # "Permission denied (publickey)"
ssh -o User=root utm-homelab                                               # denied
```

## WAN acceptance (SSH-03)

Move the dev Mac off the home LAN (phone hotspot), keep Tailscale connected, and run:

```bash
tailscale status | grep utm-homelab
ssh utm-homelab 'hostname && uptime'
tailscale ping utm-homelab        # "via DERP" is fine; "direct" is better
```

If no other network is available, record SSH-03 as **UNVERIFIED** and run this later. A test from the LAN does not count.

## Admin access to services

Services are ClusterIP only. Reach them through SSH:

```bash
ssh -L 8080:127.0.0.1:8080 utm-homelab 'kubectl -n homelab port-forward svc/api 8080:80'
curl -s http://127.0.0.1:8080/api/v1/version
```
