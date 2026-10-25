# Repository structure

A map of the HOMELAB repo: what lives where and why. The repo holds **text only**
— source, manifests, scripts, configs, docs. Large binary artifacts (VM bundles,
ISOs, disk images, evidence) live on the external drive
`/Volumes/HOMELAB/{VMs,ISO,Images,Backups}`, never in git.

> Placeholders like `<tailscale-ip>`, `<vm-user>`, `<your-tailnet>` appear instead
> of real values throughout the docs. The de-identification is enforced by
> `deploy/scripts/scan-secrets.sh` (see [Security & hygiene](#security--hygiene)).

## Top level

```
HOMELAB/
├── Cargo.toml / Cargo.lock      # Rust workspace (5 crates)
├── rust-toolchain.toml          # pinned toolchain
├── Dockerfile.{api,mcp,worker,dashboard}
├── crates/                      # Rust services
├── frontend/                    # Next.js dashboard UI (static export)
├── migrations/                  # SQL migrations (sqlx)
├── deploy/                      # k8s manifests + operational scripts
├── lab/                         # isolated security lab (Kali, IaC, tests)
├── docs/                        # operator docs (this file lives here)
├── .github/workflows/           # CI + image publishing
├── implementation.md            # plan + validation matrix (LAB-*/DASH-*/… gates)
└── README.md
```

## `crates/` — Rust workspace

| Crate | Role |
|---|---|
| `common` | Shared config, telemetry, HTTP layers, URL password redaction |
| `api` | REST API (`/api/v1/...`, health probes) |
| `mcp-server` | MCP server: bearer-token auth + Host allow-list (DNS-rebinding guard) |
| `worker` | Background job processor |
| `dashboard` | Read-only status service (kube-rs); aggregates cluster + service health, serves the frontend |

The `dashboard` crate has its own tightly-scoped ServiceAccount (`get/list/watch`
only); the other crates never touch the Kubernetes API.

## `frontend/` — dashboard UI

Next.js with `output: "export"` (static). Polls the dashboard crate's
`/api/status` and renders tiles/tables. Built **only** in Docker/CI — `node_modules`,
`.next`, and `out` are git-ignored; nothing is built on the Mac.

## `deploy/` — deployment & operations

```
deploy/
├── k8s/
│   ├── base/                    # namespace, deployments, services, PVCs,
│   │                            #   NetworkPolicy, dashboard SA+RBAC, kustomization
│   ├── jobs/                    # one-off Jobs (e.g. migrations)
│   └── overlays/homelab/        # cluster-specific image pins + kustomization
└── scripts/
    ├── lib.sh                   # pass/fail/info/die/need_cmd/finish helpers
    ├── install-k3s.sh           # k3s bootstrap
    ├── configure-ssh.sh         # key-only SSH hardening (asserts sshd -T)
    ├── deploy-from-github.sh    # SHA-locked deploy (api/mcp/worker/dashboard)
    ├── backup-databases.sh      # pg/redis backup
    ├── preflight-{host,guest}.sh, smoke-test.sh
    ├── scan-secrets.sh          # repo PII/secret scanner (CI + pre-push)
    └── local_migrate/           # ordered host↔guest setup steps (idempotent)
        ├── _common.sh           # shared defaults (volume, repo slug, GH host key)
        ├── 01-04 host-*         # power, I/O, disk resize, UTM access
        ├── 10-15 guest/devmac   # bootstrap, SSH key, Tailscale, SSH hardening
        ├── 20-22 guest          # GitHub identity, k3s, secrets
        ├── 23-guest-nodeport-firewall.sh      # dashboard 30300 → tailscale0 only
        ├── 24-guest-apiserver-firewall.sh     # k3s 6443 → loopback + tailscale0
        └── 30-devmac-deploy.sh
```

Each `local_migrate/*` step is **safe to rerun**: it prints what it would change
and needs `--yes` to act.

## `lab/` — isolated security lab

```
lab/
├── README.md, ROE.md            # topology + rules of engagement (scope)
├── scripts/                     # UTM lab-net, Kali VM, Ubuntu lab NIC, isolation gate
├── ansible/                     # roles: ubuntu-lab, kali (netplan + nftables)
├── terraform/                   # thin null_resource wrapper over the scripts
├── macos/                       # pf anchor (lab → LAN/host block)
├── k8s/                         # lab-facing NodePorts (api-lab/mcp-lab)
├── tests/                       # isolation-segment checks (nmap, zap, mcp, k8s, rate)
├── kali/                        # ← hands-on attack tutorials + scripts (bilingual)
│   ├── attack-tutorial.en.md / attack-tutorial.zh-TW.md
│   └── scripts/                 # 00-recon … 40-rate-limit, run-all.sh
├── crypto/                      # encrypted evidence pipeline (age E2E)
│   ├── setup-keys.sh            # make the two age keypairs + set the GH secret
│   ├── push-evidence.sh         # encrypt + push evidence-inbox (cron/launchd)
│   ├── decrypt-reports.sh       # local decrypt (recommended)
│   └── recipients.txt / transport.recipient  # PUBLIC age keys (safe to commit)
├── analysis/                    # Julia analysis (analyze.jl, Project.toml)
└── run-attack-incluster.sh      # in-cluster Kali pod attack runner
```

The evidence pipeline is end-to-end encrypted: Julia runs on a public GHA runner
(`.github/workflows/lab-analysis.yml`) but only ciphertext leaves it; decrypt with
`lab/crypto/decrypt-reports.sh` or the sealed `lab-decrypt.yml`. See `docs/security.md`
and `lab/crypto/README.md`.

`lab/tests/*` target the **isolated** segment (`10.66.6.10`); `lab/kali/scripts/*`
are the VM-run, `TARGET`-parameterized version usable against either the Shared-net
node or the isolated gateway. See `lab/kali/README.md`.

`lab/kali/docs/applications.{en,zh-TW}.md` catalogue the full Kali toolset (by whisker-menu
category) with per-tool intros + step-by-step tutorials. `lab/kali/scripts/install-tools.sh`
installs them (the VM is a minimal install); `lab/kali/scripts/toolkit.sh` runs and **chains**
them (`toolkit.sh chain recon,web,vuln`) into a single encrypted-pipeline-ready evidence report.
See `lab/kali/scripts/README.md`. `lab/kali/docs/catalogue.{en,zh-TW}.md` list **all 382 Kali tools by menu category** (from apt metadata); `scripts/tool.sh` runs any one tool, `scripts/apps.sh` launches any GUI app, `scripts/install-tools.sh cat:<slug>` installs a whole category.

## `docs/`

| File | Contents |
|---|---|
| `structure.md` | this file |
| `access.md` | how the dev Mac reaches the VM (SSH/Tailscale), recorded values (de-identified) |
| `security.md` | exposure model, NodePort/firewall rationale |
| `runbook.md` | day-2 operations |
| `recovery.md` | restore procedures |

## CI / publishing — `.github/workflows/`

- `ci.yml` — Rust (`--workspace`) tests/clippy, shell lint, secret scan, frontend build.
- `publish-arm64.yml` — builds + pushes SHA-tagged images for the service matrix
  (`api`, `mcp`, `worker`, `dashboard`) to GHCR.
- `lab-analysis.yml` — Julia analysis of encrypted lab-evidence (E2E encrypted; see
  Security & hygiene below).
- `lab-decrypt.yml` — manual sealed decryption of the encrypted report artifacts.

## Security & hygiene

- **No secrets in git.** `deploy/scripts/scan-secrets.sh` scans tracked text files
  for Tailscale addresses, tailnet names, SSH key fingerprints, MACs, private
  emails, bearer tokens and key/cert blobs. GitHub's public host-key fingerprint
  and the generic `100.64.0.1` isolation sample are allow-listed. Run it before
  pushing; wire it into the CI `scripts` job.
- **Secrets at runtime** come from Kubernetes Secrets (`local_migrate/22-guest-secrets.sh`),
  never from committed files.
- **Exposure controls:** dashboard NodePort is tailnet-only (`23-…`), the k3s API
  is restricted to loopback + Tailscale (`24-…`), datastores stay ClusterIP, and
  NetworkPolicy default-denies ingress.
