# HOMELAB

A single-node k3s homelab on an Ubuntu 24.04 ARM64 VM (UTM, Apple Virtualization), hosted on an M1 Pro Mac whose VM disk lives on an external HDD. A separate development Mac pushes to GitHub. CI builds linux/arm64 images to GHCR, and the VM **pulls** an approved commit SHA and its image digests. SSH works on the LAN and over Tailscale. No router ports are opened.

```
dev Mac ──push──▶ GitHub ──ci──▶ publish-arm64 ──▶ ghcr.io/<owner>/homelab-*:sha-<commit>
   │                                                      │ pull by digest
   └──ssh (LAN / Tailscale)──▶ VM: deploy-from-github.sh <SHA> ──▶ k3s namespace homelab
                                                           api · mcp · worker · postgres · redis
```

| Path | What |
|---|---|
| `implementation.md` | Plan, assessment, and **current status of every acceptance gate** |
| `crates/` | Rust workspace: `api` (Axum), `mcp-server` (rmcp Streamable HTTP), `worker` (Tokio), `common` |
| `migrations/` | sqlx migrations (applied only by the explicit migrate Job) |
| `Dockerfile.{api,mcp,worker}` | Multi-stage, digest-pinned, distroless non-root |
| `.github/workflows/` | `ci.yml` (fmt, clippy, tests with Postgres/Redis, shellcheck, manifest checks), `publish-arm64.yml` |
| `deploy/k8s/` | Kustomize base + `homelab` overlay + migrate Job template |
| `deploy/scripts/` | host/guest preflight, SSH hardening, k3s install, deploy, smoke test, backups |
| `docs/` | `access.md`, `runbook.md`, `security.md`, `recovery.md` |

## Develop

```bash
cargo test --workspace                       # DB tests skip without the env below
docker run -d --rm --name pg -e POSTGRES_PASSWORD=test -e POSTGRES_USER=test -e POSTGRES_DB=test -p 127.0.0.1:55432:5432 postgres:18.6-alpine3.24
docker run -d --rm --name rd -p 127.0.0.1:56379:6379 redis:8.8.3-alpine3.23
TEST_DATABASE_URL=postgres://test:test@127.0.0.1:55432/test TEST_REDIS_URL=redis://127.0.0.1:56379/0 cargo test --workspace
cargo fmt --all && cargo clippy --workspace --all-targets -- -D warnings
```

## Deploy

```bash
ssh utm-homelab "/opt/homelab/repo/deploy/scripts/deploy-from-github.sh $(git rev-parse origin/main)"
```

First-time setup, secrets, rollback and backups: `docs/runbook.md`.
