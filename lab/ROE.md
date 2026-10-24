# Rules of Engagement — HOMELAB security lab

**Scope.** Testing is authorized ONLY against the operator's own homelab services
on the isolated lab segment `10.66.6.0/24`, reached at the Ubuntu lab IP
`10.66.6.10` on the published ports (`30080` api, `30081` mcp). No other host,
network, or service is in scope. The Kali VM has no route to the home LAN, the
macOS host, Tailscale, or the internet, and must stay that way.

**Authorization.** These assets belong to the operator running the lab. Running
the tests here constitutes authorization for this self-owned environment only.

**Conduct.** Phase-1 tests are non-destructive and low-rate: port/exposure
scanning, HTTP auth checks, segmentation checks, and a bounded request-rate
check. No exploitation of third-party systems, no DoS, no data exfiltration, no
testing of anything outside `10.66.6.0/24`.

**Evidence.** Output is written on the Kali VM under `~/lab-evidence/`. Pull it
to the external drive from the Mac via the Ubuntu jump host when done:
`scp -o ProxyJump=<vm-user>@utm-homelab -r kali@10.66.6.20:lab-evidence \
  /Volumes/HOMELAB/Backups/lab-evidence/`

**Out of scope this phase.** Deliberately vulnerable targets and detection
engineering (Zeek/Suricata) are later milestones; do not deploy vulnerable
targets until isolation passes and they are explicitly planned.
