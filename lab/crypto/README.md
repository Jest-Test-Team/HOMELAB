# `lab/crypto` — encrypted lab-evidence analysis pipeline

Analyse `/Volumes/HOMELAB/Backups/lab-evidence/*.md` with Julia on a **public**
GitHub Actions runner, while keeping the raw data and reports **readable only by you**.
The mechanism is end-to-end encryption with [`age`](https://github.com/FiloSottile/age):
plaintext exists only in the runner's RAM during a job; everything that leaves the
runner is encrypted to a key whose private half never touches GitHub.

> **Public ≠ hidden.** On a public repo, workflow artifacts are *downloadable* by
> anyone — encryption makes them *unreadable* without your key. That is the trade-off
> you chose (keep the pipeline public). See `docs/security.md` for the full threat model.

## Keys (two age keypairs)

| Key | Public (committed) | Private | Role |
|---|---|---|---|
| Archive `R` | `recipients.txt` | `~/.config/age/lab-identity.txt` (**local only**) | runner encrypts outputs → you decrypt |
| Transport `T` | `transport.recipient` | GitHub secret `LAB_ANALYSIS_KEY` | Mac encrypts input → runner decrypts |

**Back up `~/.config/age/lab-identity.txt` offline.** Without it, the reports cannot
be decrypted by anyone, including you.

## One-time setup (Mac)

```bash
lab/crypto/setup-keys.sh          # installs age if needed, makes both keypairs,
                                  # commits the two public recipients, sets LAB_ANALYSIS_KEY
git add lab/crypto/recipients.txt lab/crypto/transport.recipient && git commit -m "lab: evidence pipeline keys"
```

Rotate the transport key anytime: `lab/crypto/setup-keys.sh --rotate`.

## Run the analysis

Automatic (cron/launchd): install the agent, then it fires every 6h.
```bash
cp lab/crypto/com.homelab.lab-evidence.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.homelab.lab-evidence.plist
```
Manual: `lab/crypto/push-evidence.sh` — encrypts the evidence and force-pushes the
`evidence-inbox` branch, which triggers `.github/workflows/lab-analysis.yml`. The run
produces an encrypted artifact `reports-<sha>.tar.zst.age` (90-day retention).

## Read the reports

**Recommended — locally (your key never leaves the Mac):**
```bash
gh run download <run-id> -n reports-<sha> -D .
lab/crypto/decrypt-reports.sh reports-<sha>.tar.zst.age ./out
open ./out/out/report.md
```

**Sealed workflow (as requested) — `.github/workflows/lab-decrypt.yml`:** set the
`LAB_DECRYPT_IDENTITY` secret to your archive private key just-in-time, dispatch the
workflow with the analysis run id + a one-time passphrase, download the 1-day
`sealed-*.tar.zst.enc` artifact, open it locally with that passphrase, then delete the
secret. The local script above is strictly safer.
