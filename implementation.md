# HOMELAB Implementation Plan — UTM Ubuntu ARM64 + Rust + k3s + GitHub Pull + LAN/WAN SSH

> **Execution specification for an engineering agent**  
> Version: 1.0 — 2026-10-23  
> Language: English (the original header said Traditional Chinese, but the body was always English); shell/configuration snippets in English.  
> **Primary principle:** Development happens on a separate Mac. The M1 Pro Mac hosts the VM and workloads. The VM obtains application changes from GitHub. Both LAN and WAN remote management must work without exposing SSH to the public internet.

## 0. Known facts, assumptions and permissions

### Confirmed facts

| Item | Confirmed setting |
|---|---|
| UTM host | MacBook Pro **M1 Pro**, 16 GB unified RAM, 512 GB internal SSD |
| Datastore | Externally powered **1 TB HDD**, CyberSLIM USB-to-SATA dock |
| Host external volume | `/Volumes/HOMELAB`, APFS, GUID/GPT, formatted and mounted successfully |
| VM bundle desired location | `/Volumes/HOMELAB/VMs/Linux 1.utm` (or renamed equivalent) |
| Hypervisor | UTM with Apple Virtualization, not Proxmox |
| Guest | Ubuntu Server **24.04 LTS ARM64** (recommended target; check actual installed release) |
| Target VM allocation | **4 vCPU, 6 GiB RAM, 80 GiB virtual system disk** |
| Orchestration | Single-node k3s, integrated containerd, local-path provisioning |
| Application stack | **Rust**: Axum, Tokio, rmcp, SQLx, redis-rs, Serde, tracing/OTel, reqwest |
| Stateful stack | PostgreSQL + Redis; PVCs reside *inside the external HDD-backed VM disk* |
| Work split | Separate development Mac -> GitHub -> UTM Ubuntu VM pulls and deploys |
| Remote access | SSH from development Mac on both LAN and outside LAN |
| Data retention | Old contents of the 1 TB HDD were deliberately erased; do not erase it again |

**Important unknowns to discover, not invent:** real Ubuntu login username, VM IPs, real repository URL, GitHub owner/org and package visibility, local LAN subnet, UTM version, whether the current UTM VM already has Ubuntu installed, actual Internet connection type, and whether Wi-Fi bridging functions. Use placeholders in templates and derive actual values through read-only commands.

### Boundaries

1. **Do not** repartition, reformat or erase `/Volumes/HOMELAB`, the VM disk, or macOS internal SSD.
2. **Do not** change SSH authentication, enable a firewall, or change UTM network mode before recording a working console recovery path. Never disconnect the only working management session.
3. **Do not** expose TCP/22, PostgreSQL/5432, Redis/6379, Kubernetes API/6443 or administration dashboards with router port forwarding or public IP assignments.
4. **Do not** commit private keys, access tokens, kubeconfig, database passwords, production `.env`, or age/SOPS private keys into GitHub.
5. **Do not** assume macOS ARM64 builds run on Ubuntu ARM64: they are different OS targets.
6. **Do not** introduce Golang in custom API, MCP or worker application code. Go-based upstream infrastructure binaries (k3s, etc.) are permitted.
7. Agent may prepare code, scripts and documentation automatically; before any destructive operation, irreversible permissions change, GitHub repository permission change or network lockout risk, stop for operator approval.
8. One Ubuntu VM is the initial workload boundary. Do not add multi-node k3s, Longhorn, Kafka, full SIEM, or public ingress during Phase 1.

### Completion definition

- `Linux 1.utm` bundle and all active VM disk images are located on `/Volumes/HOMELAB/VMs/`, not internal SSD.
- Ubuntu reports `aarch64`, 4 vCPU, about 6 GiB RAM and 80 GiB virtual block device.
- Development Mac can SSH to VM over **LAN** (direct private LAN IP when Bridged works) and **WAN** (Tailscale overlay).
- No inbound public router port forwarding is required.
- Private or public GitHub repository can be fetched by a *least-privilege* VM identity; application deployment tracks an explicit Git commit and OCI image digest/tag.
- GitHub Actions builds **Linux/ARM64** Rust images and publishes to GHCR; VM only pulls images and runs them.
- `k3s kubectl get nodes` shows a single `Ready` node.
- Rust API/MCP/worker test deployments run in the Kubernetes namespace `homelab`.
- PostgreSQL and Redis use separate PVCs (not host bind mounts on macOS), and persistence is verified across pod restart.
- SSH and app access remain functional after guest reboot; storage is never accessed while external disk is absent.
- Acceptance evidence and rollback commands are documented.

---

## 1. Target architecture

```text
  DEV MAC (editing, Rust tests, Git commits)
      |
      | git push (SSH/HTTPS)
      v
  GITHUB REPO -----------------------------------------+
      |                                               |
      | GitHub Actions: cargo test, lint, buildx ARM64 |
      v                                               |
  GHCR: ghcr.io/<owner>/<image>:<commit-sha>           |
      |                                               |
      | image pull                                    | git fetch/pull of source,
      |                                               | manifests, deploy scripts
      +------------------------------+----------------+
                                     v
  MacBook Pro M1 Pro (UTM host; compute / memory)
       |
       +-- macOS + UTM app on internal 512 GB SSD
       |
       +-- External USB HDD: /Volumes/HOMELAB (APFS, 1 TB)
             +-- VMs/Linux 1.utm/
                  +-- Ubuntu 24.04 Server ARM64 [4 vCPU, 6 GiB]
                      +-- OpenSSH Server :22
                      +-- Tailscale node (private WAN access)
                      +-- git checkout of app/infra repository
                      +-- k3s + containerd
                           +-- namespace homelab
                           +-- Rust Axum API
                           +-- Rust rmcp MCP Server
                           +-- Rust Tokio worker
                           +-- PostgreSQL StatefulSet + PVC
                           +-- Redis StatefulSet + PVC
                           +-- local-path PVs on VM Linux FS
```

**Network paths**

- **LAN direct (preferred):** Development Mac -> VM's private RFC1918 LAN IP -> Linux OpenSSH. This requires working Bridged mode, same reachable subnet, or an authorized private routed path.
- **LAN fallback:** Development Mac -> Tailscale address -> Linux OpenSSH. Works on LAN even when UTM Shared/NAT mode prevents inbound private LAN connections.
- **WAN:** Development Mac with Tailscale -> VM's Tailscale `100.x.y.z`/MagicDNS -> Linux OpenSSH. No port forwarding.
- Tailscale is the network overlay, **OpenSSH continues handling user/key authentication**. Do not enable Tailscale SSH interception (`tailscale set --ssh`) in v1; it is optional and uses a different authorization model.
- **Service exposure:** Kubernetes ClusterIP by default. Use `kubectl port-forward` over SSH for administrative access. Later a Tailnet-only reverse proxy may be added with distinct authorization review.

---

## 2. Repository layout to create

If existing repository has a structure, adapt rather than forcibly overwrite.

```text
homelab-rust/
├── README.md
├── implementation.md
├── Cargo.toml                   # workspace
├── Cargo.lock
├── crates/
│   ├── api/                     # Axum
│   ├── mcp-server/              # rmcp
│   ├── worker/                  # Tokio job processing
│   └── common/                  # shared config, errors, tracing
├── Dockerfile.api
├── Dockerfile.mcp
├── Dockerfile.worker
├── .github/workflows/
│   ├── ci.yml                   # fmt, clippy, test
│   └── publish-arm64.yml        # GHCR build, immutable SHA tags
├── deploy/
│   ├── k8s/
│   │   ├── base/
│   │   │   ├── namespace.yaml
│   │   │   ├── kustomization.yaml
│   │   │   ├── api-deployment.yaml
│   │   │   ├── api-service.yaml
│   │   │   ├── mcp-deployment.yaml
│   │   │   ├── worker-deployment.yaml
│   │   │   ├── postgres-statefulset.yaml
│   │   │   ├── postgres-service.yaml
│   │   │   ├── postgres-pvc.yaml
│   │   │   ├── redis-statefulset.yaml
│   │   │   ├── redis-service.yaml
│   │   │   └── redis-pvc.yaml
│   │   └── overlays/homelab/
│   │       └── kustomization.yaml
│   ├── scripts/
│   │   ├── preflight-host.sh
│   │   ├── preflight-guest.sh
│   │   ├── configure-ssh.sh     # non-destructive checks + guided edits
│   │   ├── deploy-from-github.sh
│   │   ├── smoke-test.sh
│   │   └── backup-databases.sh
│   └── systemd/
│       └── homelab-deploy.service
├── docs/
│   ├── access.md
│   ├── security.md
│   ├── recovery.md
│   ├── runbook.md
│   └── evidence/
├── .gitignore
└── .env.example                # keys only, no real secrets
```

Agent delivery must include a coherent **working minimum implementation**, not empty directories or stub scripts claimed as working. Record any unsupported features explicitly.

---

## 3. Phase P0 — Validate host, VM bundle, and external storage

### 3.1 Host checks (macOS)

```bash
set -e
sw_vers
uname -m
system_profiler SPHardwareDataType | grep -E 'Chip|Memory' || true
diskutil info /Volumes/HOMELAB | grep -E 'Volume Name|Mounted|Mount Point|Device Location|File System'
df -h /Volumes/HOMELAB
find /Volumes/HOMELAB/VMs -maxdepth 1 -name '*.utm' -print
```

Agent must detect if VM bundle still resides at `/Volumes/HOMELAB/Linux 1.utm`; if so, shut down the VM, use UTM's **Move** feature or Finder on the same volume, then reopen and verify it starts. **Never copy a live VM disk.**

Check whether the `.utm` has a virtual drive with expected **guest capacity 80 GiB**; the bundle's Finder size can be small due to sparse allocation and is not proof the virtual disk is missing.

### 3.2 External HDD robustness

- Run a controlled write/read checksum test on the mounted **HOMELAB** volume (only new dedicated temporary files; delete them afterward).
- Observe for USB disconnects / `I/O error` / unexpected ejects; do not treat a successful format as a stress test.
- Earlier dock had intermittent USB detection on a different Mac. Revalidate USB 3.x negotiated speed with `system_profiler SPUSBDataType`; if absent, `system_profiler SPStorageDataType` and System Information may help, but do not assume 480 Mb/s is adequate for multi-VM I/O.
- macOS Disk Utility reported SMART unsupported through this bridge. Record SMART as **unknown**, not healthy.
- Use a backup target **different from the same HDD**; backups stored on the same failed physical drive are not failure protection.
- Keep host awake while providing VM services (UTM preference can prevent sleep, but test reboot/login behavior). Do not assume UTM auto-starts VMs before login.

### 3.3 VM checks (Ubuntu console)

```bash
uname -m                  # aarch64
cat /etc/os-release        # target Ubuntu 24.04 LTS
nproc                     # 4
free -h                   # ~5.7-6 GiB
lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS
findmnt /
lsblk -f
```

Gate P0: files located on external storage, `HOMELAB` mounted, stable I/O and expected guest resources. Stop if drive spontaneously disconnects.

---

## 4. Phase P1 — VM networking + key-only SSH, LAN and WAN

**Do this before k3s or database installation. Always retain the UTM VM console until both access paths pass.**

### 4.1 Network strategy: Bridged first when supported, Shared fallback

1. Start with existing **UTM Shared Network** to ensure Ubuntu can reach Internet. Record `ip -br addr`, `ip route`, `resolvectl status`, and `curl -I https://github.com`.
2. If dedicated LAN address is required, shut down guest and try UTM VM settings -> Network -> **Bridged (Advanced)** -> select correct physical interface. Boot VM and check router's DHCP lease and `ip -4 addr`.
3. **Wi-Fi bridging is not guaranteed:** macOS/UTM note that bridged Wi-Fi may require further configuration. Do not invent a bridge setup or change host network without a rollback plan.
4. If Bridged breaks DNS, DHCP, LAN reachability or WAN, revert to Shared Network. Use guest Tailscale for both LAN and WAN SSH. This still satisfies remote SSH from other computers, although not **direct private-LAN-IP** access; clearly report which outcome was achieved.
5. Prefer a DHCP reservation on the LAN router when Bridged succeeds. Do not hardcode a guessed static IP.

**Verification:**

```bash
# Inside guest
ip -4 -br addr
ip -4 route
getent hosts github.com
curl -Is --max-time 10 https://github.com | head -1
```

### 4.2 Install native OpenSSH and create non-root admin user

Substitute `<vm-user>` with actual account; do not create a duplicate if already provisioned.

```bash
sudo apt update
sudo apt install -y openssh-server git curl ca-certificates jq
sudo systemctl enable --now ssh
sudo systemctl status ssh --no-pager
sudo ss -lntp | grep ':22'
```

On **development Mac** (not guest) generate a dedicated key if one is not already available:

```bash
ssh-keygen -t ed25519 -a 100 -f ~/.ssh/homelab_utm_ed25519 -C 'dev-mac-to-utm-homelab'
cat ~/.ssh/homelab_utm_ed25519.pub
```

Install only the `.pub` contents in guest `~<vm-user>/.ssh/authorized_keys` via the **VM console** (or `ssh-copy-id` when initial access exists); chmod home/`.ssh` appropriately:

```bash
# Inside guest as <vm-user>
mkdir -p ~/.ssh
chmod 700 ~/.ssh
# Append the verified public key, NEVER the private key, to ~/.ssh/authorized_keys.
chmod 600 ~/.ssh/authorized_keys
```

From development Mac verify key auth **before disabling passwords**:

```bash
ssh -i ~/.ssh/homelab_utm_ed25519 -o IdentitiesOnly=yes <vm-user>@<LAN-IP-OR-TAILSCALE-IP> 'hostname; id; uname -m'
```

Only once verified and console recovery confirmed, create a **drop-in** `/etc/ssh/sshd_config.d/00-homelab.conf`.

> **Correction (v1.1):** OpenSSH uses the *first* value it reads for most keywords, and drop-ins are read in lexical order. Ubuntu cloud images ship `50-cloud-init.conf` with `PasswordAuthentication yes`, which would override a `60-` file. Name the drop-in `00-homelab.conf` so it wins, and still confirm with `sshd -T`. `deploy/scripts/configure-ssh.sh` does this.

```sshconfig
PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no
KbdInteractiveAuthentication no
X11Forwarding no
AllowUsers <vm-user>
```

Before reload, inspect effective SSH config and possible earlier overriding directives:

```bash
sudo sshd -t
sudo sshd -T | grep -E 'permitrootlogin|pubkeyauthentication|passwordauthentication|kbdinteractiveauthentication|allowusers'
sudo systemctl reload ssh
```

**Critical:** If `sshd -T` shows passwords still allowed because of `Include` order or conflicting config, rectify and re-test from a **second** terminal without terminating the first session.

### 4.3 Tailscale: zero inbound public ports

Install Tailscale **inside Ubuntu guest** and on the **development Mac**. Treat setup as requiring interactive authorization to the operator's Tailnet; never request account credentials in scripts.

Official Linux method (review fetched script / repository provenance under organizational policy before execution):

```bash
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up --hostname=utm-homelab
sudo tailscale status
tailscale ip -4
```

Do **not** run `tailscale up --ssh` in v1. Native OpenSSH will authenticate the user's ED25519 public key via Tailscale's encrypted transport.

Tailnet administration:

- Both developer Mac and Ubuntu VM must join the **same authorized Tailnet**.
- Restrict network grants/ACLs to approved developer identities/devices -> `utm-homelab:22`; deny unneeded east-west access. Actual policy syntax depends on current Tailnet configuration; modify additively and validate with the Tailnet policy editor/tests. Never replace existing policy blindly.
- Turn on account MFA/SSO where available, device approval if desired, and follow existing key expiry/security policy; do not globally disable expiry as a shortcut.
- Record Tailscale name/IP in `docs/access.md`; do not treat `100.x` as a public IP.

Development Mac config (replace placeholders with real values):

```sshconfig
Host utm-homelab
    HostName <TAILSCALE-IP-OR-MAGICDNS-NAME>
    User <vm-user>
    IdentityFile ~/.ssh/homelab_utm_ed25519
    IdentitiesOnly yes
    ServerAliveInterval 30
    ServerAliveCountMax 3

Host utm-homelab-lan
    HostName <PRIVATE-LAN-IP>
    User <vm-user>
    IdentityFile ~/.ssh/homelab_utm_ed25519
    IdentitiesOnly yes
```

From *the actual development Mac*:

```bash
ssh utm-homelab 'hostname && uptime'
ssh utm-homelab-lan 'hostname && uptime'  # only when Bridged works
```

**WAN acceptance:** Disconnect developer Mac from homelab LAN (mobile hotspot or different network), keep Tailscale connected, and verify `ssh utm-homelab`. If no external network is available during implementation, mark WAN **UNVERIFIED** and give an exact later test; do not claim success from an on-LAN-only test.

**Firewall caution:** k3s CNI and UFW interact; do not enable UFW with a blanket `deny incoming` without preserving Tailscale/SSH and allowing CNI traffic correctly. Initial safe boundary: Shared NAT + Tailnet ACLs + application ClusterIP. If Bridged is selected, create a narrowly scoped host firewall plan and test console recovery first. Never open k3s API, Postgres or Redis across the LAN merely to make the deployment easier.

### 4.4 Recovery / lockout checklist

- Always retain UTM console.
- Save original SSH files before edits and run `sshd -t` before reload.
- If network change breaks access: UTM console -> verify `ip route`, `ss -lntp`, `systemctl status ssh tailscaled`, restore UTM Shared mode if needed.
- `tailscale down` must not be a prerequisite for accessing the local console; no dependence on the overlay to boot Ubuntu.
- Protect private SSH key on development Mac with key passphrase, OS permissions, and backups.

Gate P1: LAN key-based SSH **and** WAN Tailnet SSH verified, with no public port forwards. If Bridged fails, document that LAN access is via Tailscale, not direct LAN IP.

---

## 5. Phase P2 — GitHub identity and pull-only release process

### 5.1 Separate identities for human SSH and GitHub SSH

The public key that permits **developer -> VM** SSH must not be reused as the key that permits **VM -> GitHub** git pull.

For a private GitHub repo, create a dedicated **read-only Deploy Key** on the VM:

```bash
# Inside Ubuntu as <vm-user>
ssh-keygen -t ed25519 -a 100 -f ~/.ssh/github_homelab_ro -C 'utm-homelab-repo-readonly'
chmod 600 ~/.ssh/github_homelab_ro
cat ~/.ssh/github_homelab_ro.pub
```

The operator must add the **public** key to GitHub Repository -> Settings -> Deploy keys -> Add deploy key, leaving **Allow write access unchecked**. The agent must not enable write access or access other repositories without authorization.

Configure a repository-specific SSH alias to avoid accidentally using the host login key:

```sshconfig
Host github-homelab
    HostName github.com
    User git
    IdentityFile ~/.ssh/github_homelab_ro
    IdentitiesOnly yes
    StrictHostKeyChecking yes
```

Establish `known_hosts` through a verified official GitHub SSH host key fingerprint; **do not blindly trust `ssh-keyscan` output**. See https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints .

Validate:

```bash
ssh -T github-homelab   # (v1.1 fix: GIT_SSH_COMMAND only affects git, not a direct ssh call)
# Expected GitHub authentication success message, not an interactive shell.
```

For a *public* repo, HTTPS clone works without a deploy key. For a private GHCR image, provide a **separate minimal-scope read-only registry credential** using `imagePullSecrets` or an approved alternative; a Git SSH deploy key cannot itself authenticate Docker/OCI pulls.

### 5.2 Repository checkout path

Prefer guest native filesystem (which is inside external VM disk) rather than macOS shared folders:

```bash
sudo mkdir -p /opt/homelab
sudo chown <vm-user>:<vm-user> /opt/homelab
cd /opt/homelab
git clone git@github-homelab:<OWNER>/<REPO>.git repo
cd repo
git remote -v
git branch --show-current
```

`<OWNER>/<REPO>` is deliberately a placeholder: obtain it from user/agent inputs, not inference from unrelated projects.

### 5.3 Two separate GitHub paths

**Source/control path:** Developer Mac edits Rust code and manifests -> commits -> pushes PR/branch -> CI tests -> PR merge -> Ubuntu VM performs `git fetch` and checks out approved **SHA**.

**Binary path:** GitHub Actions builds **linux/arm64** OCI images for API, MCP server and worker -> pushes immutable commit-tagged images to `ghcr.io` -> Ubuntu/k3s pulls the approved image without compiling Rust on the 6 GiB/HDD VM.

Recommended v1: **manual deployment triggered over SSH** (pull model, no unsolicited remote execution from GitHub). Example from development Mac after CI succeeds:

```bash
ssh utm-homelab '/opt/homelab/repo/deploy/scripts/deploy-from-github.sh <APPROVED_FULL_COMMIT_SHA>'
```

The agent must implement `deploy-from-github.sh` with:

1. `set -Eeuo pipefail`, controlled environment, `flock` to serialize deploys.
2. Preflight checks: free disk space, cluster node Ready, `git` repository origin, connectivity to GHCR, required k8s secrets present.
3. Fetch exact revision from a configured **allowlisted** repository/branch; enforce full 40-hex commit SHA input and verify commit is reachable from the intended protected branch (`git merge-base --is-ancestor`). Do **not** `git pull` arbitrary untrusted branch and execute it as root.
4. Checkout approved commit **without losing local changes**; refuse if working tree dirty. Consider separate release worktree for atomic staging.
5. Resolve corresponding OCI image references (`ghcr.io/<owner>/<api|mcp|worker>:sha-<fullsha>` or immutable digest); wait/check that all images exist. Record image digests in deployment evidence.
6. Apply namespace + manifests with `kubectl apply -k` and update all Rust image references to the approved SHA (or better digest). Keep cluster config values in Kustomize overlay without live credentials.
7. `kubectl rollout status` with timeout; health-check HTTP readiness and confirm pod image IDs/digests.
8. On failure, **do not silently delete PVCs or wipe DB**; use controlled `kubectl rollout undo`/previous manifest commit and report exact failure.
9. Write structured deployment log (`date`, git SHA, images, previous SHA, result) to `/var/log` or a protected user-owned directory.

**Important:** Pinning application git SHA and container image SHA only provides correspondence if CI generates images from that exact commit. Avoid `latest` tags for deployments. Use GHCR visibility settings explicitly; never assume an image is public.

### 5.4 GitHub Actions contract

Generate CI workflow(s) that:

- Run `cargo fmt --all -- --check`, `cargo clippy --workspace --all-targets -- -D warnings`, and `cargo test --workspace` for the Rust workspace (cross-host compile details defined by workflow).
- Build each service as a **linux/arm64** container with `docker/setup-qemu-action` as necessary and `docker/setup-buildx-action`.
- Authenticate to GHCR using ephemeral `GITHUB_TOKEN` with `packages: write` in the publishing job only; PR jobs should have minimal `contents: read` and **no secrets for untrusted forks**.
- Build `ghcr.io/<owner>/<service>:sha-<fullsha>` and capture OCI digest. Never publish from untrusted PR contexts.
- Use multi-stage Dockerfiles; production runtime should be a minimal non-root Linux ARM64 image, include CA certs as required; do not mount source or toolchain in runtime.
- Cache cargo builds (GitHub Actions cache / buildx cache), since the UTM VM HDD is not a good compilation worker.
- Pin release tooling/actions to reviewed versions or immutable commit SHAs per organization practice, avoid floating `@main`.
- Optionally add SBOM, provenance attestation, and vulnerability scanning as a second milestone.

**Do not** automatically run database migrations on untrusted pull requests. Production migrations are an explicit release step with rollback/backup plan.

---

## 6. Phase P3 — Harden Ubuntu baseline and install k3s

### 6.1 Base dependencies / service settings

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y ca-certificates curl git jq openssh-server chrony
sudo timedatectl set-timezone Asia/Taipei
sudo systemctl enable --now chrony
uname -m
```

Optional unattended security updates require reboot policy; do not blindly reboot a running stateful workload.

Check time, filesystem, mount and available RAM:

```bash
timedatectl
free -h
df -h /
findmnt -no SOURCE,FSTYPE,OPTIONS /
```

Disable or manage swap according to the selected k3s/container runtime version and documented kernel requirements; do not assume all current Kubernetes releases have the same swap limitations. Verify cgroups, iptables/nftables, IPv4 forwarding and kernel prerequisites **against installed k3s release documentation**.

### 6.2 Install single-node k3s (bundled containerd)

Start with official install instructions from https://docs.k3s.io/quick-start and requirements from https://docs.k3s.io/installation/requirements . k3s supports arm64.

```bash
# REVIEW the version, checksum, flags, and script before production install.
# This example expresses desired flags; agent must pin/verify an approved release.
curl -sfL https://get.k3s.io -o /tmp/install-k3s.sh
less /tmp/install-k3s.sh
sudo INSTALL_K3S_EXEC='server --write-kubeconfig-mode 600 --disable traefik' \
  sh /tmp/install-k3s.sh
sudo systemctl enable --now k3s
sudo k3s kubectl get nodes -o wide
sudo k3s kubectl get pods -A
sudo k3s kubectl get storageclass
```

**Version pinning requirement:** Use `INSTALL_K3S_VERSION=<reviewed-release>` once the current release has been verified; the above is a functional template, **not a promise of a pinned version**. Record chosen release in `docs/runbook.md`.

Reason for disabling bundled Traefik initially: no public ingress needed for SSH/GitHub-pull path; enable an intentional private ingress later. Do not disable bundled local-path provisioner, CoreDNS or metrics dependencies without reason.

Default local-path PVC backing directories live *inside the Ubuntu guest virtual disk* (commonly under `/var/lib/rancher/k3s/storage`) and therefore ultimately on `/Volumes/HOMELAB/VMs/...`. Confirm effective storage path:

```bash
sudo k3s kubectl get sc -o wide
sudo k3s kubectl get nodes -o wide
sudo ls -ld /var/lib/rancher/k3s/storage || true
```

Agent must not expose the kubeconfig to the internet; use `sudo k3s kubectl` in guest or access kubectl through SSH. Never copy `/etc/rancher/k3s/k3s.yaml` into a public repo.

### 6.3 Node resource policy

This machine is 4 vCPU / 6 GiB. Use requests and limits carefully:

| Workload | Initial RAM request/limit guideline |
|---|---|
| PostgreSQL | 256 MiB request / 768 MiB limit |
| Redis | 64 MiB request / 256 MiB limit; set explicit maxmemory policy |
| Rust API | 64 MiB request / 256 MiB limit |
| Rust MCP | 64 MiB request / 256 MiB limit |
| Rust worker | 64 MiB request / 256 MiB limit |
| k3s/OS/CoreDNS/containerd | Reserve remaining capacity; measure actual usage |

These are **initial placeholders, not proven real-world consumption**. Benchmark actual Rust services and PostgreSQL behavior and adjust; avoid overcommitting memory and disk. `kubectl top` only works if metrics-server is operational (k3s normally bundles it unless disabled).

---

## 7. Phase P4 — Rust applications and Kubernetes manifests

### 7.1 Rust workspace contract

- Workspace uses Rust 2024 edition if supported by selected stable toolchain; pin `rust-toolchain.toml` to a tested version.
- Shared crate provides config parsing, errors and tracing initialization.
- API: Axum endpoints `GET /health/live`, `GET /health/ready`, `GET /api/v1/version` (version includes git SHA).
- MCP server: Rust `rmcp` using a clearly declared transport (stdio for local launch, Streamable HTTP if remote; do not expose unauthenticated MCP HTTP endpoints). For k3s, prefer private ClusterIP behind explicit authentication/authorization and ingress strategy; implement a minimal safe sample tool.
- Worker: Tokio loop with graceful shutdown via SIGTERM, idempotent job handling, readiness semantics; no uncontrolled background fanout.
- PostgreSQL: SQLx with parameterized queries, externally supplied credentials and versioned migrations. `sqlx migrate` must be an explicit controlled job.
- Redis: `redis-rs` with bounded timeouts, reconnection policy, maxmemory handling. Redis is not a source of truth unless persistence and durability policy are explicitly designed.
- Logging: JSON structured logs via tracing, include request ID and git SHA; never print tokens, passwords or key material.
- Unit and integration tests must work on development environment/CI; k3s smoke tests executed on Ubuntu deployment target.

### 7.2 Kubernetes objects

Agent must produce valid, deployable Kubernetes objects for:

1. Namespace `homelab`.
2. `api` Deployment and ClusterIP Service, with readiness/liveness probes, low initial replicas (1), resources, restricted security context and non-root image.
3. `mcp` Deployment and ClusterIP Service **only if** a network transport is chosen and authenticated; for stdio-only MCP, document deployment integration rather than inventing a network service.
4. `worker` Deployment with no public Service unless required.
5. PostgreSQL single-replica StatefulSet + Headless/ClusterIP Service + PVC (initial e.g. **10 GiB**). Pin image version and architecture compatibility.
6. Redis single-replica StatefulSet + ClusterIP Service + PVC where persistence is required (initial e.g. **2 GiB**); otherwise explicitly document ephemeral Redis.
7. One Kustomize overlay for the UTM guest, with registry owner and commit image tags as parameters.
8. `NetworkPolicy` restrictive rules if effective CNI policy enforcement is confirmed. **Flannel itself does not enforce NetworkPolicy; k3s adds an embedded kube-router policy controller that is on by default unless `--disable-network-policy` is set. Verify it is active and test denials** (see `smoke-test.sh`); never claim isolation solely because YAML exists.
9. Pod security settings (no privileged mode; drop capabilities; seccomp RuntimeDefault; read-only root filesystem wherever possible). Database containers may require writable mounted directories.
10. `terminationGracePeriodSeconds`, startup probes where appropriate, and bounded resources.

**Guest disk budget:** 80 GiB includes OS, k3s/containerd, images, logs, PostgreSQL and Redis PVCs. External 1 TB capacity does *not* automatically expand guest root FS. Introduce log rotation and disk usage alerts early. If workload grows, expand the virtual disk safely with a separately reviewed disk+filesystem procedure, or attach a second HDD-backed virtual disk for PVCs; never assume host `df` equals guest `df`.

### 7.3 Secrets management

- Git repository: `.env.example` only; no credentials.
- Guest: use root-readable source under `/etc/homelab/secrets/`, mode 0700 for parent, 0600 for files, or operator-approved SOPS + age with **private** age key outside Git.
- Kubernetes Secrets may be created from protected files, e.g. `kubectl -n homelab create secret generic ... --from-env-file=...` in a securely scripted process that never `cat`s or echoes secret contents.
- Secrets in Kubernetes etcd are not automatically encrypted at rest in every k3s deployment; for sensitive workloads evaluate k3s secrets encryption and secure off-device backups before production-like deployment.
- For GHCR private packages, use dedicated fine-grained read-only credential (or approved registry integration) through `imagePullSecrets`. Never put registry password into deployment YAML.

---

## 8. Phase P5 — Deployment script behavior and rollback

### 8.1 Example intended operator commands

From development Mac:

```bash
# Development and CI occur on the separate Mac / GitHub.
git status
git add .
git commit -m 'feat: deploy rust service'
git push origin <feature-branch>
# Merge approved PR; wait for Linux/ARM64 images to publish.

# Obtain *approved* commit SHA from repository (example only):
git rev-parse origin/main

# Use the resulting exact full SHA in deployment command:
ssh utm-homelab '/opt/homelab/repo/deploy/scripts/deploy-from-github.sh <APPROVED_FULL_COMMIT_SHA>'
```

From Ubuntu, after deployment:

```bash
sudo k3s kubectl -n homelab get deployments,statefulsets,pods,svc,pvc -o wide
sudo k3s kubectl -n homelab rollout status deployment/api --timeout=180s
sudo k3s kubectl -n homelab get pod -o wide
sudo k3s kubectl -n homelab describe pvc
```

**Postgres migrations:** Explicit Job tied to approved version; back up DB first, verify migrations against compatible schema, and refuse automatic destructive downgrade.

### 8.2 Rollback

- Keep successful deployment manifest SHA and image digests in durable guest log.
- Stateless: restore previous immutable image digest / Kustomize revision and `kubectl rollout status`.
- Stateful: never delete PVCs during rollback; distinguish code rollback from incompatible database schema rollback; restore database only after operator review.
- If Kubernetes manifests changed and `rollout undo` has insufficient history, use the previous Git release commit with pinned image digest.
- If USB HDD disconnects: stop VM operations, investigate connection before resuming; filesystem consistency checks in guest only after clean recovery procedure, **not** on a live writable root FS.

---

## 9. Phase P6 — Validation matrix and evidence

| ID | Test | Acceptance / evidence |
|---|---|---|
| STOR-01 | `diskutil info /Volumes/HOMELAB` | External + Mounted + APFS + expected location |
| STOR-02 | VM bundle location | `.utm` under `/Volumes/HOMELAB/VMs/` |
| STOR-03 | USB sustained I/O | No disconnect / kernel I/O errors across controlled test |
| GUEST-01 | `uname -m`, `nproc`, `free -h`, `lsblk` | aarch64 / 4 vCPU / ~6GiB / 80GiB disk |
| NET-01 | guest Internet and GitHub DNS | resolvable / TLS reachable |
| SSH-01 | dev Mac -> private LAN IP | key-only login if Bridged functional; otherwise explicitly N/A and use overlay |
| SSH-02 | dev Mac -> Tailscale address on same LAN | key-only login succeeds |
| SSH-03 | dev Mac -> Tailscale from different WAN | key-only login succeeds; no router forward |
| SSH-04 | SSH password/root attempts | denied after hardening |
| GIT-01 | VM -> GitHub fetch | works using read-only GitHub identity |
| CI-01 | main branch Linux/ARM64 image build | published immutable SHA tag + recorded digest |
| K3S-01 | k3s Ready | 1 node Ready |
| K3S-02 | PVC provisioning | Bound, on expected guest root/virtual disk |
| APP-01 | Rust API readiness | `/health/ready` responds correctly |
| APP-02 | Rust MCP capability | authorized test tool invocation succeeds |
| APP-03 | Rust worker | job processes idempotently; restart recovery tested |
| DATA-01 | PostgreSQL | test row survives pod restart |
| DATA-02 | Redis | documented persistence mode works / deliberate ephemeral mode confirmed |
| DEPLOY-01 | approve SHA then deploy from SSH | VM pulls exact repo revision and matching images |
| DEPLOY-02 | rollback | known prior app version recovered without PVC deletion |
| BOOT-01 | Ubuntu reboot | SSH+Tailscale+k3s reappear |
| HOST-01 | Mac restart/UTM startup | VM start method documented; no premature boot before external volume mount |
| SEC-01 | outside-in network scan | no public exposed SSH, DB, Redis or kube API |

For each test, store timestamped redacted command output under `docs/evidence/` or a local private evidence folder. Never include live secrets or real key materials.

### Remote access acceptance nuance

It is valid to meet **LAN and WAN SSH** with a single guest Tailscale identity, provided a remote laptop works from both LAN and WAN. But this is **not equal to** "VM has an address on the physical LAN." Report both capabilities separately and do not mark direct LAN IP test passed unless Bridged/routing was demonstrated.

### Recovery tests

- Deliberately test guest reboot, but avoid unexpected interruption of database writes.
- Host restart: check whether UTM VM requires user login and manual start. If always-on service is a requirement, design supported startup automation only after validating external HDD mounts first.
- Disconnection simulation must **not** unplug a live disk while database writes are active. Use graceful shutdown to test VM stop/restart; reserve fault-injection for expendable snapshots with explicit approval.

---

## 10. Agent execution order and stop gates

| Stage | Agent may execute | Must stop / ask operator |
|---|---|---|
| P0 | Read-only inspection, plan, test file after mounted volume verified | Disk erase, VM destructive reconfiguration, damaged external drive |
| P1 | Install and configure OpenSSH, prepare keys, run connectivity tests | Tailnet login/ACL approval, disabling password auth before key test, risky network changes |
| P2 | Create code/scripts, prepare read-only GitHub deploy key, clone authorized repo | Granting GitHub key permission, repo selection if ambiguous, registry secret creation |
| P3 | Propose pinned k3s version, create config, install after preflight | Cluster reset/uninstall, firewall lockout, broad port exposure |
| P4 | Generate Rust services, Dockerfiles, Kubernetes YAML and tests | Live credentials, irreversible DB migrations |
| P5 | Implement SHA-locked deploy scripts, CI, smoke tests | Merge to protected branch, production deployment or privileged GitHub action changes where approval needed |
| P6 | Run non-destructive tests and produce report | Destructive chaos tests / backup restores |

**Agent deliverables:**

1. `implementation.md` (this file) updated with actual verified values and completion statuses.
2. Rust Cargo workspace + working Rust API, MCP and worker minimum functionality.
3. GitHub Actions CI + linux/arm64 image publishing workflows.
4. Production-like Dockerfiles, Kubernetes Kustomize overlays and pinned images.
5. Idempotent VM provisioning/access scripts and pull-only deployment script with rollback.
6. `docs/access.md`, `docs/runbook.md`, `docs/security.md`, `docs/recovery.md`.
7. Validation evidence summary: PASS / FAIL / BLOCKED / UNVERIFIED, with exact tested commands, UTC timestamps and redacted logs.
8. Remaining-risk list: HDD hardware reliability, performance limitations, backup gaps, inability to guarantee always-on UTM without host wake/login.

**Priority order:** `P0 storage` -> `P1 remote SSH` -> `P2 GitHub pull+CI` -> `P3 k3s` -> `P4 Rust+DB` -> `P5 deployment` -> `P6 acceptance`.

---

## 11. Operational commands (non-destructive)

**macOS host:**

```bash
diskutil info /Volumes/HOMELAB | grep -E 'Mounted|Device Location|Mount Point|File System'
find /Volumes/HOMELAB/VMs -maxdepth 1 -name '*.utm' -print
df -h /Volumes/HOMELAB
```

**Ubuntu guest:**

```bash
hostnamectl
uname -m
ip -br addr
ip route
systemctl is-active ssh tailscaled k3s
tailscale status
df -h /
sudo k3s kubectl get nodes -o wide
sudo k3s kubectl -n homelab get pods,pvc
```

**Development Mac:**

```bash
ssh utm-homelab 'hostname && uptime'
ssh utm-homelab 'sudo k3s kubectl -n homelab get pods'
```

If sudo requires a TTY, use `ssh -t ...` or grant a narrowly scoped audited administrative workflow instead of blanket passwordless sudo. Do not broaden sudo privileges merely to make the agent's commands succeed.

---

## 12. Primary references to verify before execution

- UTM Apple Virtualization network modes and Wi-Fi bridged caveat: https://docs.getutm.app/settings-apple/devices/network/
- UTM settings and VM behavior: https://docs.getutm.app/settings-apple/settings-apple/
- Tailscale official Ubuntu/Linux install: https://tailscale.com/docs/install/linux
- Tailscale SSH vs OpenSSH-over-Tailscale: https://tailscale.com/docs/features/tailscale-ssh
- k3s quick start: https://docs.k3s.io/quick-start
- k3s ARM64 requirements: https://docs.k3s.io/installation/requirements
- GitHub SSH fingerprints: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints
- GitHub deploy keys: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys
- GitHub Container Registry: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

**Final instruction to agent:** Complete P0 and P1 before attempting k3s or Rust workload deployment. Prefer concrete, tested and reversible operations. Do not report a feature complete based solely on generated YAML or code; record runtime evidence for each acceptance gate.

---

## 13. Plan assessment (v1.1, 2026-10-23)

Overall the plan is **sound and suitable**: a single-node pull-only design, overlay-only remote access, and immutable SHA/digest deploys are proportionate for one 16 GB host. Corrections and design decisions applied while implementing:

| # | Finding | Severity | Resolution |
|---|---|---|---|
| A1 | `60-homelab.conf` loses to Ubuntu's `50-cloud-init.conf` (sshd uses first value read) | **High**: password auth could stay enabled | Drop-in renamed `00-homelab.conf`; `configure-ssh.sh` asserts the effective `sshd -T` values |
| A2 | `GIT_SSH_COMMAND=... ssh -T` has no effect (variable only read by git) | Low | Replaced with `ssh -T github-homelab` |
| A3 | "Flannel does not enforce NetworkPolicy" is incomplete: k3s ships an embedded kube-router policy controller, on by default | Medium | NetworkPolicies are shipped; smoke test checks that a denied connection really is denied |
| A4 | QEMU-emulated arm64 Rust builds on x86 runners are very slow (often 30–60+ min) | Medium | CI builds natively on GitHub's `ubuntu-24.04-arm` runners; QEMU not needed. If the repo is private and the plan lacks arm runners, switch `runs-on` to `ubuntu-24.04` and add `setup-qemu-action` |
| A5 | Ubuntu 24.04 uses socket-activated `ssh.socket`; port changes need `systemctl restart ssh.socket` | Low | Port is unchanged; documented in `docs/recovery.md` |
| A6 | `--write-kubeconfig-mode 600` means only root can run kubectl, while the plan forbids blanket passwordless sudo | Medium | Runbook installs a user-owned `~/.kube/config` (0600) for `<vm-user>`. This makes the user cluster-admin; documented in `docs/security.md` |
| A7 | Digest lookup needs a registry client on the VM | Low | `deploy-from-github.sh` queries the GHCR v2 API with `curl` (anonymous token for public packages, read-only PAT from `/etc/homelab/secrets/ghcr.env` for private) |
| A8 | Header said "Traditional Chinese" but the document is English | Trivial | Header corrected |
| A9 | Repo layout root named `homelab-rust/` | Trivial | This repository (`HOMELAB`) is the root |
| A10 | `homelab-deploy.service` needs the SHA as input | Low | Shipped as template `homelab-deploy@.service` (instance = full SHA) |
| A11 | Postgres 18 images moved the default `PGDATA` | Medium | `PGDATA` set explicitly to a subdirectory of the PVC mount |
| A12 | OpenTelemetry export | Scope | **Not implemented in v1**: JSON `tracing` logs only. Recorded as unsupported |
| A13 | A worker has no natural HTTP readiness | Low | Worker exposes a tiny `/health/*` listener on 8081 for probes |

Design choices for the minimum implementation:

- **Job model:** PostgreSQL is the source of truth (`jobs` table, unique `idempotency_key`). The worker claims rows with `FOR UPDATE SKIP LOCKED`. Redis is only a wake-up signal (`LPUSH`/`BRPOP`) and a short-lived cache, so losing Redis never loses jobs. Redis runs with AOF on a 2 GiB PVC and `maxmemory-policy noeviction`.
- **MCP:** rmcp Streamable HTTP on ClusterIP, protected by a mandatory bearer token (the server refuses to start without one). Sample tools: `server_version`, `echo`.
- **Migrations:** embedded `sqlx` migrations, run only via `api migrate` in an explicit Job (`deploy-from-github.sh --migrate`, which takes a backup first).


---

## 14. Execution status (2026-10-23)

### Where the work was done

The agent ran on the **development Mac** (Apple M3, macOS 15.8.2), **not** on the M1 Pro UTM host: `/Volumes/HOMELAB` is not mounted there and UTM/`utmctl` is not installed. Every gate that needs the host, the VM, the LAN, Tailscale or the router is therefore **BLOCKED** (it needs the operator on that machine) and has a ready script. Repository, CI and Kubernetes behaviour were verified for real: in GitHub Actions, and on a local **k3s v1.36.5+k3s1** server in Docker (arm64), against a local registry and git origin that stood in for GHCR/GitHub.

Raw logs are kept locally in `docs/evidence/` (git-ignored by operator choice, since the repo is public): `2026-10-23-cargo-test.log`, `2026-10-23-local-k3s/{deploy-*.log,smoke-persistence.log,deployments.jsonl}`. Secrets were scanned for before saving: none found.

### Verified values

| Item | Value |
|---|---|
| Repository | `Jest-Test-Team/HOMELAB` (public), branch `main` |
| Images | `ghcr.io/jest-test-team/homelab-{api,mcp,worker}`; anonymous pull works (public packages) |
| k3s release proposed/tested | `v1.36.5+k3s1` (stable channel on 2026-10-23) |
| Toolchain / DB images | Rust 1.99.0; `postgres:18.6-alpine3.24`, `redis:8.8.3-alpine3.23` (digest-pinned) |
| Image size | ~60 MB each (distroless cc, non-root 65532) |
| Not discovered (needs operator) | VM username, VM IPs, LAN subnet, UTM version/network mode, Tailscale IP, Wi-Fi bridging result |

### Validation matrix

| ID | Status | Evidence / next step |
|---|---|---|
| STOR-01 | **PASS** 2026-10-23T07:50Z (host) | `/Volumes/HOMELAB` mounted, APFS, Protocol USB, Device Location External; 931 GiB, 924 GiB free. Host: Apple M1, 16 GB, macOS 26.5.2 |
| STOR-02 | **PASS** 2026-10-23T07:50Z (host) | 1 bundle under `/Volumes/HOMELAB/VMs/`. Disk `A78D7532-….qcow2`, 4.2 GB allocated; virtual size not yet known (first run misread qcow2, fixed) |
| STOR-03 | **PASS** 2026-10-23T11:54Z (host) | `--io-test 2048`: checksum stable across re-read; write+hash 64 s (~32 MB/s, VM running), re-read 67 s. No kernel/disk-arbitration storage errors in 2h. USB link speed not detected. SMART: UNKNOWN (USB-SATA bridge) |
| GUEST-01 | **PASS** 2026-10-23T12:14Z (VM) | aarch64, 4 vCPU, 5382 MiB visible (6144 MiB configured), `vda` 80 GiB after host resize; root LV grown to 76 GiB. **Ubuntu 26.10, not 24.04 LTS** (see VM findings) |
| NET-01 | **PASS** 2026-10-23T12:12Z (VM) | GitHub DNS + TLS, ghcr.io reachable; UTM Shared mode, DHCP 192.168.64.4 |
| SSH-01 | BLOCKED | needs Bridged mode; otherwise N/A (report separately from SSH-02) |
| SSH-02 | **PASS** 2026-10-23T13:21Z | `ssh utm-homelab` over Tailscale 100.75.144.61 (via DERP hkg, no direct path yet). Host key checked equal to the one already trusted on 192.168.64.4 before adding it. Deploy dry run over Tailscale passed |
| SSH-03 | BLOCKED / UNVERIFIED | must be tested from a different network (`docs/access.md`, WAN acceptance) |
| SSH-04 | BLOCKED | key login verified; `14-guest-harden-ssh.sh --yes` needs the operator at the UTM console |
| GIT-01 | **PASS** 2026-10-23T12:17Z (VM), **changed method** | the org has deploy keys disabled (`deploy_keys_enabled_for_repositories: false`), so `/opt/homelab/repo` is an anonymous read-only HTTPS clone of the public repo (`20-guest-github-identity.sh --https`). No credential stored |
| CI-01 | **PASS** 2026-10-23T07:25Z | Actions: `ci` success on `90b2d02` and `a3f073a`; `publish-arm64` success, `skipped` when `ci` was cancelled (gate works). `sha-a3f073aed8c3…` digests: api `sha256:31617f08…af8f`, mcp `sha256:b05eabc2…9627`, worker `sha256:407aa824…a68a`; index contains `linux/arm64` + attestations |
| K3S-01 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | node `home-lab` Ready; secrets encryption at rest enabled (AES-CBC) before any app Secret existed |
| K3S-02 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | `postgres-data` 10Gi + `redis-data` 2Gi Bound on local-path |
| APP-01 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | `/health/ready` 200 `{"postgres":"ok","redis":"ok"}` |
| APP-02 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | MCP 401 without token; authorised tool call succeeded |
| APP-03 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | idempotent enqueue, worker processed job |
| DATA-01 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | row survived `postgres-0` restart (`smoke-test.sh --persistence`) |
| DATA-02 | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | AOF key survived `redis-0` restart |
| NETPOL | **PASS** VM (Ubuntu 26.10, kernel 7.3, k3s v1.36.5) 2026-10-23 | non-client pod denied to postgres, db-client allowed |
| DASH-01 | **RUNNING** 2026-10-23T14:39Z (VM) | `crates/dashboard` pod Ready; `/api/status` returns real data (1 node, all 6 workloads 1/1, PVCs Bound, api/mcp health 200, no RBAC errors); frontend served at `http://100.75.144.61:30300`. Image built locally and imported into k3s (`homelab-dashboard:local`, imagePullPolicy Never) pending the first CI/GHCR build |
| DASH-02 | **PASS** 2026-10-23T14:41Z (VM) | NodePort 30300: 200 via Tailscale (100.75.144.61), HTTP 000 (blocked) via the Shared NIC (192.168.64.4). nftables prerouting-raw rule (NodePort packets are DNAT-forwarded, so they are dropped before DNAT, not in INPUT) |
| LAB-01 | **PARTIAL** 2026-10-23T14:48Z | Kali 2026.3 arm64 ISO downloaded to `/Volumes/HOMELAB/ISO/` (checksum OK) and `Kali-Red.utm` bundle created on the external drive (Host-only NIC, 2 vCPU/3 GiB/40 GiB), registered in UTM. **Install is interactive** (UTM console). NB: a separate `Kali-attack` VM already exists but on a Shared NIC (not isolated) and with an empty disk |
| LAB-02 | SCRIPTED | guest config via `lab/ansible` (static lab IPs, nftables, tools); macOS pf anchor (`lab/macos`) |
| LAB-03 | **PASS** 2026-10-23T15:35Z (in-cluster) | Isolated Kali attacker (redlab ns, egress locked to DNS+api/mcp) attacked the homelab. All controls held: nmap shows only api/mcp open (postgres/redis filtered); DB ports blocked; attacker has no internet; MCP no/bad token=401, foreign Host=403, valid=auth passes; 40/40 rate burst healthy. Evidence on the external drive. (VM-based Kali: install needs the UTM console) |
| LAB-04 | **PASS** 2026-10-23T15:35Z | Phase-1 attack executed from the isolated Kali attacker: nmap exposure, segmentation, MCP auth matrix, rate burst — 0 findings, all controls held. Evidence: `/Volumes/HOMELAB/Backups/lab-evidence/` |
| DEPLOY-01 | **PASS** 2026-10-23T12:47Z (VM) | `1c9b1ed8a282` deployed with `--migrate`: backup → migrate Job → digest-pinned apply → imageIDs match → smoke `--expect-sha`. Needed the first-deploy data-tier fix (defect 12) |
| DEPLOY-02 | PASS (local harness) | A → B → `--rollback` → A; broken release C auto-restored to A's exact digests; PVC UIDs unchanged; off-branch / short / malformed SHAs and a concurrent deploy refused |
| BOOT-01 | **PASS** 2026-10-23T12:50Z (VM) | after `systemctl reboot`: SSH, k3s and all pods back unattended, AppArmor fix still active, smoke test 0 fail. Tailscale part pending login |
| HOST-01 | BLOCKED | `docs/runbook.md`, Host restart |
| SEC-01 | BLOCKED | outside-in `nmap` from off-LAN (`docs/security.md`) |
| Rust quality | PASS 2026-10-23 | `cargo fmt --check`, `clippy -D warnings`, 31 tests incl. real PostgreSQL/Redis |
| Scripts / workflows | PASS | `shellcheck -x` clean; `actionlint` clean |

### Host findings (operator run of preflight-host.sh, 2026-10-23T07:50Z)

- **The VM disk is qcow2, so the VM almost certainly uses UTM's QEMU backend, not Apple Virtualization** (which uses raw `.img`). The plan assumes Apple Virtualization (§0, §4.1). QEMU works for the plan, but UTM's Bridged/Shared network options differ by backend; the rerun prints `Backend` from `config.plist`.
- **4.2 GB allocated** in the VM disk suggests Ubuntu may not be installed yet, or is a minimal install. Confirm at the console (`cat /etc/os-release`).
- **Host power settings are unsuitable for an always-on VM:** on AC power `sleep 1`, `disksleep 10`, `lowpowermode 1`. Operator action: `sudo pmset -c sleep 0 disksleep 0 lowpowermode 0` (display sleep can stay).
- **`utmctl` returned OSStatus -1743:** the terminal app lacks Automation permission for UTM (System Settings > Privacy & Security > Automation), or it was run over SSH.

### Defects found and fixed while verifying

1. `smoke-test.sh` leaked `kubectl port-forward` processes (subshell PID capture, plus `$!` of a shell function). The leaked processes inherited and **held the deploy lock**, blocking later deploys.
2. `deploy-from-github.sh` rollback loop overwrote the failing Deployment's name in the error message.
3. `kubectl rollout undo` reverted Deployments the failed release had *not* changed to an *older* release. Rollback now re-applies the previous release's rendered, digest-pinned manifest.
4. `kubectl delete pod --wait` could hang on StatefulSet pods; replaced with a bounded new-UID + Ready wait.
5. Kustomize rejects absolute resource paths, so the release kustomization is generated inside the release worktree (`deploy/k8s/release/`, git-ignored).
6. CI guard used `! grep` under `set -e`, which never fails a step (found by actionlint).
7. macOS bash 3.2 empty-array expansion under `set -u` (`preflight-host.sh`).
9. `preflight-host.sh` (from the first real host run): read qcow2 apparent size as capacity; matched any 480 Mb/s USB device instead of the dock; flagged app-level SQLite "disk I/O error" lines as storage faults. Now: qcow2 header parse, per-disk USB speed via the APFS physical store, kernel/diskarbitrationd-only log filter, plus UTM backend/CPU/memory and AC-power checks.
8. The runbook's first secrets procedure could not work as written (unprivileged `cd` into a root-only 0700 dir). Rewritten, and executed against a temp dir.

10. **AppArmor (Ubuntu 26.10):** with `allowPrivilegeEscalation: false`, the kernel stacks containerd's profile with the parent's (`cri-containerd.apparmor.d//&unconfined`). The stock profile only allows signals to `peer=cri-containerd.apparmor.d`, so processes in one container could not signal each other: PostgreSQL hung forever (SIGURG latch wakeups denied), Go binaries such as `gosu` spun at 100% CPU. Fixed by `deploy/apparmor/cri-containerd.apparmor.d` (containerd's template plus one peer rule), installed by `21-guest-k3s.sh` before k3s; confinement stays in enforce mode.
11. **k3s kubectl ignored `~/.kube/config`** and read the root-only `/etc/rancher/k3s/k3s.yaml`. `21-guest-k3s.sh` now exports `KUBECONFIG` at the top of `~/.bashrc`, and `deploy.env` sets `KUBECTL="kubectl --kubeconfig=…"`.
12. **First deploy with `--migrate` could not work:** backup and the migrate Job ran before anything was applied, so `postgres-0` did not exist. `deploy-from-github.sh` now, when no postgres StatefulSet exists, skips the backup and applies everything except the app Deployments, waits for the databases, then migrates. The interrupted first init (defect 10) had left no `homelab` database; it was created with the entrypoint's own `CREATE DATABASE`.
13. `local_migrate` script bugs found on the real host/VM: qcow2 size read from the child file node (4 GiB instead of 64), `growpart` given the partition instead of the disk, growpart failures hidden, and `13-devmac-ssh-config.sh` adding a blank line to `~/.ssh/config` on every run.

### VM findings (2026-10-23, first real VM run)

- **The guest is Ubuntu 26.10 (kernel 7.3, AppArmor 6.0 alpha), not 24.04 LTS.** Operator decision 2026-10-23: **stay on 26.10.** It is supported for about 9 months, so plan an upgrade to the next release (or a 24.04/26.04 LTS rebuild with the `local_migrate` scripts) before end of support, and recheck the AppArmor fix after each kernel or containerd upgrade.
- **Guest disk vanished once (2026-10-23T12:26:34Z).** Every virtio write and then read failed, ext4 aborted its journal and remounted read-only. On the host no process had the qcow2 open any more, while `/Volumes/HOMELAB` stayed mounted and writable, and the macOS log shows no USB or APFS error. Root cause unknown. Recovery: force-stop, `qemu-img check` (clean), APFS clone, boot; journal replay left the root fs clean. Watch for recurrence with `preflight-guest.sh` (kernel I/O errors) and `preflight-host.sh`.
- **USB write throughput ~32 MB/s** (2 GiB io-test with the VM running); fsync'd 4 KiB writes in the guest ~4 ms each.
- Backups go to `/opt/homelab/backups` for now: same physical HDD, not failure protection.

### Operator next steps (in order)

Done 2026-10-23: P0 host (power, io-test, 80 GiB disk, utmctl), guest bootstrap, P2 (HTTPS), P3 k3s + Secrets, P5 first deploy, BOOT-01.

1. Pushed through `f865771`; `/opt/homelab/repo` is fast-forwarded to it. Commit the `13-devmac-ssh-config.sh` fix.
2. Done: Tailscale approved, SSH-02 passes.
3. With the UTM console logged in: `14-guest-harden-ssh.sh --yes`, then `15-devmac-verify-ssh.sh` (SSH-04); later `--wan` off-LAN (SSH-03).
4. Done: staying on Ubuntu 26.10 (VM findings); calendar the end-of-support upgrade.
5. Off-device `BACKUP_DIR`; DEPLOY-02 rollback on the VM; HOST-01; SEC-01.

### Remaining risks

- **External HDD reliability:** SMART is unreadable through the USB-SATA bridge, the dock had intermittent detection on another Mac, and it is a single disk. Health is unknown.
- **Backups:** `BACKUP_DIR` must be on another physical device; none is configured yet.
- **Always-on:** UTM does not start VMs before login, and host sleep stops the workload. There is no supported auto-start that waits for `/Volumes/HOMELAB`.
- **Performance:** a USB HDD-backed virtual disk for PostgreSQL. Resource limits are placeholders until measured (`kubectl top`).
- **Privilege:** `<vm-user>` holds an admin kubeconfig. k3s secrets encryption at rest is not yet verified.
- **Public repo and images:** anything committed or published is world-readable. Keep evidence local (as configured).
- **Not implemented in v1:** OpenTelemetry export, egress NetworkPolicy, image vulnerability scanning, a namespaced deploy identity.
