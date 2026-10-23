# Runbook

Operator procedures for the UTM Ubuntu VM. Commands marked **(guest)** run inside the VM as `<vm-user>`; **(dev Mac)** on the development Mac; **(host)** on the M1 Pro UTM host. Phases match `implementation.md`.

## Pinned versions

| Component | Version | Where pinned |
|---|---|---|
| k3s | `v1.36.5+k3s1` (stable channel, 2026-10-23) | `install-k3s.sh --version` |
| Rust toolchain | `1.99.0` | `rust-toolchain.toml`, Dockerfiles |
| PostgreSQL | `18.6-alpine3.24@sha256:898c60cb…d6a5` | `postgres-statefulset.yaml`, CI |
| Redis | `8.8.3-alpine3.23@sha256:dc95ea2f…abfca` | `redis-statefulset.yaml`, CI |
| Runtime base | `gcr.io/distroless/cc-debian13:nonroot@sha256:83b9b505…4edf` | `Dockerfile.*` |
| Build base | `rust:1.99.0-slim-trixie@sha256:2752b332…5581` | `Dockerfile.*` |
| GitHub Actions | commit SHAs (checkout v7.0.1, buildx v4.4.1, login v4.6.0, build-push v7.4.0, metadata v6.2.0, rust-cache v2.9.3) | `.github/workflows/*.yml` |

Bump a tag and its digest together, and run CI before deploying.

## P0: host and storage (host)

```bash
./deploy/scripts/preflight-host.sh                  # read-only
./deploy/scripts/preflight-host.sh --io-test 2048   # + 2 GiB write/verify on a dedicated temp file
```

If the bundle is at `/Volumes/HOMELAB/Linux 1.utm`: shut the VM down, use UTM's **Move** (or Finder, same volume) into `/Volumes/HOMELAB/VMs/`, reopen it in UTM, boot, verify. Never copy a running VM.

Inside the guest: `./deploy/scripts/preflight-guest.sh`.

## P1: SSH and Tailscale

See `docs/access.md`. Summary: key installed → test key login → Tailscale on both ends → `configure-ssh.sh apply --console-confirmed` → SSH-01..04.

## P2: GitHub pull identity (guest)

```bash
ssh-keygen -t ed25519 -a 100 -f ~/.ssh/github_homelab_ro -C 'utm-homelab-repo-readonly' -N ''
cat ~/.ssh/github_homelab_ro.pub     # operator adds as a READ-ONLY deploy key
```

`~/.ssh/config`:

```sshconfig
Host github-homelab
    HostName github.com
    User git
    IdentityFile ~/.ssh/github_homelab_ro
    IdentitiesOnly yes
    StrictHostKeyChecking yes
```

`known_hosts`: write GitHub's key yourself, then compare its fingerprint with the one published at <https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints>. Do not trust bare `ssh-keyscan` output.

```bash
ssh-keyscan -t ed25519 github.com > /tmp/gh.key
ssh-keygen -lf /tmp/gh.key        # must equal the published SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU
cat /tmp/gh.key >> ~/.ssh/known_hosts
ssh -T github-homelab             # "Hi OWNER/REPO! You've successfully authenticated..."
```

Checkout (installed, trusted copy of the deploy tooling):

```bash
sudo mkdir -p /opt/homelab/{releases,state,backups} && sudo chown -R "$USER:$USER" /opt/homelab
git clone git@github-homelab:<OWNER>/<REPO>.git /opt/homelab/repo
sudo install -d -m 755 /etc/homelab && sudo install -d -m 700 /etc/homelab/secrets
sudo install -m 644 /opt/homelab/repo/deploy/deploy.env.example /etc/homelab/deploy.env
sudoedit /etc/homelab/deploy.env       # ALLOWED_REMOTE, REGISTRY_OWNER (lowercase), BACKUP_DIR
```

Updating the deploy tooling itself is a deliberate step, separate from deploying apps: `git -C /opt/homelab/repo pull --ff-only` after reviewing the diff.

Private GHCR packages only: create a fine-grained PAT with `read:packages` only. It lives in a user-owned file because the deploy script runs as `<vm-user>`:

```bash
install -d -m 700 ~/.config/homelab
install -m 600 /dev/null ~/.config/homelab/ghcr.env
"${EDITOR:-nano}" ~/.config/homelab/ghcr.env     # GHCR_USER=<user>  GHCR_TOKEN=<read-only PAT>
```

## P3: k3s (guest)

```bash
./deploy/scripts/preflight-guest.sh --k3s
./deploy/scripts/install-k3s.sh --version v1.36.5+k3s1          # verify + review only
./deploy/scripts/install-k3s.sh --version v1.36.5+k3s1 --yes    # install
# User kubeconfig (0600). Makes <vm-user> cluster-admin: see docs/security.md.
install -d -m 700 ~/.kube && sudo install -m 600 -o "$USER" /etc/rancher/k3s/k3s.yaml ~/.kube/config
kubectl get nodes -o wide && kubectl get sc
sudo ls -ld /var/lib/rancher/k3s/storage
```

## Secrets (guest)

Source files live in `/etc/homelab/secrets/` (root, dir 0700, files 0600). Values are generated as root and never echoed. `set -C` refuses to overwrite existing files, so a rerun cannot silently rotate a database password.

```bash
sudo install -d -m 700 -o root -g root /etc/homelab/secrets
sudo sh -c 'set -eC; umask 077; cd /etc/homelab/secrets
  PG=$(openssl rand -hex 24); RD=$(openssl rand -hex 24); MCP=$(openssl rand -hex 24)
  printf "POSTGRES_USER=homelab\nPOSTGRES_PASSWORD=%s\nPOSTGRES_DB=homelab\n" "$PG" > postgres.env
  printf "REDIS_PASSWORD=%s\n" "$RD" > redis.env
  printf "DATABASE_URL=postgres://homelab:%s@postgres.homelab.svc:5432/homelab\nREDIS_URL=redis://:%s@redis.homelab.svc:6379/0\n" "$PG" "$RD" > app.env
  printf "MCP_AUTH_TOKEN=%s\n" "$MCP" > mcp.env'

kubectl apply -f /opt/homelab/repo/deploy/k8s/base/namespace.yaml
for s in postgres redis app mcp; do
  sudo cat "/etc/homelab/secrets/$s.env" |
    kubectl -n homelab create secret generic "homelab-$s" --from-env-file=/dev/stdin --dry-run=client -o yaml |
    kubectl apply -f -
done
```

Private GHCR only: build the pull secret from the environment so the token never appears in a process list:

```bash
( set -a; . ~/.config/homelab/ghcr.env; set +a
  jq -n '{auths: {"ghcr.io": {auth: ("\(env.GHCR_USER):\(env.GHCR_TOKEN)" | @base64)}}}' ) |
  kubectl -n homelab create secret generic ghcr-pull --type=kubernetes.io/dockerconfigjson \
    --from-file=.dockerconfigjson=/dev/stdin --dry-run=client -o yaml | kubectl apply -f -
```

Both pipelines were checked with `--dry-run=client` on k3s v1.36.5. Before storing anything sensitive, check secrets encryption at rest with `sudo k3s secrets-encrypt status`. If it is disabled, enable it using the k3s `--secrets-encrypt` docs.

## P5: Deploy

From the dev Mac, after CI and `publish-arm64` are green for the commit:

```bash
SHA=$(git rev-parse origin/main)     # must be the full 40-hex SHA
ssh utm-homelab "/opt/homelab/repo/deploy/scripts/deploy-from-github.sh $SHA"
# first deploy (creates the schema), or any release with new migrations:
ssh utm-homelab "/opt/homelab/repo/deploy/scripts/deploy-from-github.sh --migrate $SHA"
# images still building:
ssh utm-homelab "/opt/homelab/repo/deploy/scripts/deploy-from-github.sh --wait-images 900 $SHA"
# render + server-side validation only:
ssh utm-homelab "/opt/homelab/repo/deploy/scripts/deploy-from-github.sh --dry-run $SHA"
```

Deployment records: `/opt/homelab/state/deployments.jsonl` (time, SHA, previous SHA, image digests, result), rendered manifests in `/opt/homelab/state/rendered-<SHA>.yaml`.

journald alternative: install `deploy/systemd/homelab-deploy@.service` (set `User=`), then `sudo systemctl start homelab-deploy@$SHA`.

## Rollback

| Case | Action |
|---|---|
| Rollout or smoke test fails | Automatic: the previous release's rendered manifest is re-applied |
| Bad release that passed the smoke test | `deploy-from-github.sh --rollback` (previous successful SHA) or `deploy-from-github.sh <OLDER_SHA>` |
| Incompatible schema | Code rollback alone is not enough: stop writers, restore the pre-migration backup (`docs/recovery.md`), after review |

No script deletes PVCs. Migrations are forward-only.

## Backups

```bash
./deploy/scripts/backup-databases.sh          # BACKUP_DIR from deploy.env; keeps 14 of each
```

Point `BACKUP_DIR` at storage on another physical device (NAS mount, second disk). A backup on the VM disk sits on the same USB HDD.

## Routine checks (guest)

```bash
systemctl is-active ssh tailscaled k3s
kubectl -n homelab get pods,pvc
kubectl top pods -n homelab        # metrics-server is bundled with k3s
df -h / && sudo k3s crictl images | wc -l
./deploy/scripts/smoke-test.sh
```

## Host restart (HOST-01)

UTM does not start VMs before user login. After a host reboot: log in, confirm `/Volumes/HOMELAB` is mounted (`preflight-host.sh`), then start the VM in UTM (or `utmctl start "Linux 1"`). Do not configure auto-start until the mount check is part of it.
