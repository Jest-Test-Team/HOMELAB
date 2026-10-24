# Security model

## Exposure

| Surface | Reachable from | Control |
|---|---|---|
| OpenSSH :22 | LAN (Bridged only) and tailnet | key-only (`00-homelab.conf`), `AllowUsers <vm-user>`, no root, Tailnet ACL to `tcp:22` |
| k3s API :6443 | guest localhost / node IP only | not forwarded; used via SSH or the guest's `~/.kube/config` |
| PostgreSQL / Redis | in-cluster, labelled clients only | ClusterIP (headless), NetworkPolicy, passwords from Secrets |
| API / MCP HTTP | in-cluster (namespace) | ClusterIP, NetworkPolicy; MCP also needs a bearer token |
| Dashboard HTTP :30300 | tailnet only | NodePort, but a guest nftables rule (`23-guest-nodeport-firewall.sh`) drops it on every interface except `tailscale0`; read-only, no secrets |
| Router | nothing | **no port forwards**; WAN access is Tailscale only |

SEC-01 (outside-in scan) must be run from a host off the LAN: `nmap -Pn -p 22,5432,6379,6443,80,443 <public IP>` should show everything filtered or closed.

## Identities

| Identity | Scope | Location |
|---|---|---|
| Dev Mac → VM SSH key | login as `<vm-user>` | dev Mac `~/.ssh/homelab_utm_ed25519` (passphrase) |
| VM → GitHub deploy key | **read-only**, one repo | guest `~/.ssh/github_homelab_ro` |
| GHCR pull PAT (private packages only) | `read:packages` | guest `~/.config/homelab/ghcr.env` (0600) + `ghcr-pull` Secret |
| CI publish | ephemeral `GITHUB_TOKEN`, `packages: write` in `publish-arm64` only | GitHub |
| App secrets | DB/Redis passwords, MCP token | guest `/etc/homelab/secrets/*.env` (root 0600) → K8s Secrets |
| Dashboard ServiceAccount | **read-only** (`get/list/watch`) on namespace objects + nodes | `homelab-dashboard` SA, scoped Role/ClusterRole (`dashboard-sa-rbac.yaml`) |

The deploy key and the login key are different keys. None of the above is committed. `.gitignore` blocks common key, kubeconfig and `.env` names. The CI `manifests` job fails on literal secrets or `:latest` images.

## Supply chain

- Base images and DB images are pinned by tag **and** digest. Actions are pinned to commit SHAs.
- Images are built only from `main` commits that passed `ci` (`workflow_run`). PR workflows have `contents: read` and no secrets.
- Images are tagged `sha-<full commit>`. Deploys resolve the tag to a digest once and pin pods to `@sha256:`, so a re-pushed tag cannot change a running release.
- `publish-arm64` attaches SBOM and provenance attestations. Vulnerability scanning is **not** in v1.
- The VM never builds code and never executes code from a fetched commit. The deploy tooling runs from the installed checkout, and a release only contributes manifests.
- k3s is installed from a pinned release with a verified checksum.

## Workload hardening

- Namespace enforces Pod Security `restricted`.
- All containers run non-root with `allowPrivilegeEscalation: false`, `capabilities: drop [ALL]`, seccomp `RuntimeDefault` and a read-only root filesystem. PostgreSQL gets writable `emptyDir`s for its socket and `/tmp`.
- ServiceAccount token automount is disabled. No workload needs the Kubernetes API.
- NetworkPolicy: default-deny ingress, plus PostgreSQL/Redis only from labelled clients and HTTP only from within the namespace. Enforcement comes from k3s's embedded kube-router controller. `smoke-test.sh` proves a deny on every run. Egress is unrestricted in v1.
- The MCP server refuses to start with a token shorter than 32 bytes, compares tokens in constant time, and validates `Host` against an allowlist.
- Logs are JSON. HTTP spans record the path only (no query strings). Database URLs are logged with passwords redacted. Tokens are never logged.

## Attack lab (lab/)

The optional Kali lab is a **separate, isolated L2 segment** (`10.66.6.0/24`,
static, no gateway). Kali reaches only the authorized test surface on the Ubuntu
lab IP (`api` 30080, `mcp` 30081) and nothing else — not the home LAN, the macOS
host, Tailscale, or the internet. Three enforcement layers: Ubuntu nftables (lab
ingress allowlist + no forwarding to management), Kali nftables (default-drop
egress to the target only), and a macOS pf anchor. `verify-lab-isolation.sh` is
the acceptance gate and must pass before any testing; the `api-mcp-lab`
NodePorts and their NetworkPolicy are opt-in (`lab/k8s/`), applied only while
the lab runs. Deliberately vulnerable targets are out of scope until isolation
is proven. See `lab/README.md` and `lab/ROE.md`.

## Accepted risks / known gaps

| Risk | Note |
|---|---|
| `<vm-user>` is effectively cluster-admin | `~/.kube/config` is a copy of the k3s admin kubeconfig (0600). Alternative: a namespaced ServiceAccount kubeconfig for deploys (future) |
| Redis password visible in the Redis container's process args | from `--requirepass $(REDIS_PASSWORD)`; only readable inside that container |
| K8s Secrets may not be encrypted at rest | check `k3s secrets-encrypt status`; enable before sensitive data |
| SMART unavailable through the USB-SATA bridge | drive health is **unknown** |
| Single physical disk | backups must go to another device |
| No egress policy, no image scanning, no OTel | v2 items |

## Encrypted evidence analysis pipeline (`lab/crypto`, `lab/analysis`)

Lab attack evidence is analysed with Julia on a **public** GitHub Actions runner,
end-to-end encrypted so only the operator can read the data or reports. Two `age`
keypairs keep the two concerns separate:

| Key | Public (committed) | Private | Role |
|---|---|---|---|
| Archive `R` | `lab/crypto/recipients.txt` | `~/.config/age/lab-identity.txt` (local only) | runner encrypts outputs → operator decrypts |
| Transport `T` | `lab/crypto/transport.recipient` | GitHub secret `LAB_ANALYSIS_KEY` | Mac encrypts input → runner decrypts |

Flow: `push-evidence.sh` tar+zstd+`age`-encrypts the evidence to `T_pub` and
force-pushes the single-commit `evidence-inbox` branch → `lab-analysis.yml` decrypts
with `LAB_ANALYSIS_KEY` into `$RUNNER_TEMP` (never the checkout), runs `analyze.jl`,
re-encrypts the raw+reports bundle to `R_pub`, and uploads **only that ciphertext** as
a 90-day artifact. Decrypt locally with `decrypt-reports.sh` (recommended) or via the
sealed `lab-decrypt.yml`.

**Threat model / honest limits:**

| Property | Status |
|---|---|
| Report/raw data confidentiality | **Protected** — sealed to `R_pub`; `R_priv` never leaves the Mac |
| Artifact download by others | **Possible** (public repo) but useless without `R_priv`; true "no download" needs a private repo |
| `LAB_ANALYSIS_KEY` on GitHub | decrypts **input only**; a leak does not expose report archives; rotate via `setup-keys.sh --rotate` |
| Plaintext in logs | avoided: crypto runs with `set +x`, secrets masked, Julia never prints evidence content |
| Malicious workflow edit exfiltrating secrets | mitigated: only collaborators can push `evidence-inbox` / edit workflows; fork PRs get no secrets |
| `lab-decrypt.yml` transits plaintext in a public runner | true; the local `decrypt-reports.sh` is strictly safer and is the recommended path |
| Loss of `~/.config/age/lab-identity.txt` | **irrecoverable** — back it up offline |
