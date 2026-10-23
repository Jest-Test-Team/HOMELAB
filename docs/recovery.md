# Recovery

The UTM console on the M1 Pro host is the recovery path for everything below. It does not depend on SSH, Tailscale or the guest network.

## SSH lockout

From the UTM console, logged in as `<vm-user>`:

```bash
/opt/homelab/repo/deploy/scripts/configure-ssh.sh rollback     # removes 00-homelab.conf and reloads
# or manually:
sudo rm /etc/ssh/sshd_config.d/00-homelab.conf
sudo sshd -t && sudo systemctl reload ssh
ls -d /etc/ssh/backup-*        # full copies taken before each apply
```

Ubuntu 24.04 uses socket activation (`ssh.socket`). A reload is enough for auth settings. If you ever change `Port`/`ListenAddress`, run `sudo systemctl daemon-reload && sudo systemctl restart ssh.socket` too.

Diagnostics:

```bash
systemctl status ssh ssh.socket tailscaled --no-pager
sudo ss -lntp | grep ':22'
sudo journalctl -u ssh -n 50 --no-pager
sudo sshd -T | grep -E 'passwordauthentication|pubkeyauthentication|allowusers|permitrootlogin'
```

## Network change broke access

1. UTM console: `ip -4 -br addr`, `ip -4 route`, `resolvectl status`.
2. Shut the guest down (`sudo poweroff`), set UTM Network back to **Shared Network**, boot.
3. Check `tailscale status`; Tailscale works in Shared mode and restores LAN+WAN SSH.

Nothing in the boot path depends on Tailscale. `tailscale down` is never required to use the console.

## External HDD disconnect

1. Do not try to write to the VM. If the guest is still running, run `sudo k3s kubectl -n homelab scale statefulset --all --replicas=0` from the console if possible, then `sudo poweroff`.
2. If the guest is hung, stop it from UTM (Stop → Force) only as a last resort.
3. Check the cable, the dock power and `diskutil list` on the host. Run `deploy/scripts/preflight-host.sh` until STOR-01..03 pass.
4. Boot the guest. Ubuntu runs fsck on the next boot if needed. Do **not** fsck a mounted, writable root filesystem.
5. After boot: `preflight-guest.sh --k3s`, then `smoke-test.sh`.

Never start the VM while `/Volumes/HOMELAB` is absent. UTM will report a missing bundle. Do not "locate" a copy on the internal SSD.

## k3s

```bash
sudo systemctl status k3s --no-pager
sudo journalctl -u k3s -n 200 --no-pager
sudo k3s kubectl get nodes -o wide
sudo k3s kubectl get pods -A
```

Do not run `k3s-uninstall.sh` or `k3s-killall.sh` without operator approval. Uninstall deletes `/var/lib/rancher/k3s`, which includes every local-path PVC.

## Application rollback

See `docs/runbook.md` → *Rollback*. In short: `deploy-from-github.sh <PREVIOUS_FULL_SHA>`. PVCs are never deleted by any script in this repo.

## Database restore

Restores are operator-reviewed only:

```bash
# 1. stop writers
kubectl -n homelab scale deploy/api deploy/worker --replicas=0
# 2. restore a dump made by backup-databases.sh
kubectl -n homelab exec -i postgres-0 -- sh -c 'pg_restore --clean --if-exists -U "$POSTGRES_USER" -d "$POSTGRES_DB"' \
  < /path/to/homelab-YYYYMMDDTHHMMSSZ.dump
# 3. start writers
kubectl -n homelab scale deploy/api deploy/worker --replicas=1
```

## Guest disk full / resize

Check first: `df -h /`, `sudo du -xh --max-depth=1 /var | sort -h`, `sudo k3s crictl rmi --prune` (removes unused images only).

Ubuntu's LVM installer often leaves half the disk unallocated. Extending into existing free space is online and safe:

```bash
sudo vgs                                   # VFree > 0 ?
sudo lvextend -r -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
```

Growing the 80 GiB virtual disk itself (UTM resize, then `growpart` + `pvresize`) is a separate reviewed procedure. Take a backup to a different physical disk first.
