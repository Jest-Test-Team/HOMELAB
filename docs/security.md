# Security model

## Exposure

| Surface | Reachable from | Control |
|---|---|---|
| OpenSSH :22 | LAN (Bridged only) and tailnet | key-only (`00-homelab.conf`), `AllowUsers <vm-user>`, no root, Tailnet ACL to `tcp:22` |
| k3s API :6443 | guest localhost / node IP only | not forwarded; used via SSH or the guest's `~/.kube/config` |
| PostgreSQL / Redis | in-cluster, labelled clients only | ClusterIP (headless), NetworkPolicy, passwords from Secrets |
| API / MCP HTTP | in-cluster (namespace) | ClusterIP, NetworkPolicy; MCP also needs a bearer token |
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

## Accepted risks / known gaps

| Risk | Note |
|---|---|
| `<vm-user>` is effectively cluster-admin | `~/.kube/config` is a copy of the k3s admin kubeconfig (0600). Alternative: a namespaced ServiceAccount kubeconfig for deploys (future) |
| Redis password visible in the Redis container's process args | from `--requirepass $(REDIS_PASSWORD)`; only readable inside that container |
| K8s Secrets may not be encrypted at rest | check `k3s secrets-encrypt status`; enable before sensitive data |
| SMART unavailable through the USB-SATA bridge | drive health is **unknown** |
| Single physical disk | backups must go to another device |
| No egress policy, no image scanning, no OTel | v2 items |
