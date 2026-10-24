# lab/ — isolated Kali attack-lab

A second VM (Kali "Red") on an **isolated** segment, for authorized security
testing of your own homelab services. Isolation is verified **before** any
deliberately vulnerable target is ever deployed.

## Topology

```
  Development Mac (M1 Pro) ── Tailscale/SSH ─────────────┐
        │  UTM host                                       │ management
        │                                                 ▼
   ┌────┴─────────────── Ubuntu "Blue" (Linux-homelab) ───────────────┐
   │  eth0  Shared NAT  → GitHub deploy, Tailscale, SSH, dashboard     │
   │  eth1  Host-only   → 10.66.6.10   (lab)                           │
   │        k3s: api/mcp exposed to the lab ONLY on 30080/30081        │
   └──────────────────────────┬───────────────────────────────────────┘
                              │  isolated L2 (vmnet host, static IPs, no gateway)
                              ▼
          Kali "Red" (Kali-Red)  eth0 Host-only → 10.66.6.20
          single NIC: no internet, no home LAN, no Tailscale, no Mac
```

Management and attack traffic are separate: Ubuntu keeps its Shared/NAT +
Tailscale management path; the lab is a dedicated host-only L2 with static
addressing and no gateway, so there is no route off it. Three enforcement
layers: Ubuntu nftables (lab ingress + no forwarding), Kali nftables
(default-drop egress to the target only), macOS pf (host can't bridge the lab).

## Run order

```bash
# 0. download the Kali arm64 installer ISO into /Volumes/HOMELAB/ISO/
# 1. host: lab network + VMs (everything on the external drive)
lab/scripts/lab-net.sh
lab/scripts/ubuntu-add-lab-nic.sh --yes       # Ubuntu shut down first
lab/scripts/make-kali-vm.sh --yes             # creates Kali-Red on the external drive
#    boot Kali in UTM, install it, then:
lab/macos/install-pf-anchor.sh load --yes     # host-side isolation

# 2. configure guests (static IPs, firewalls, tools) — from the Mac
cd lab/ansible && ansible-galaxy collection install -r requirements.yml
ansible-playbook site.yml                      # set kali_orchestration_pubkey first

# 3. expose the authorized test surface and GATE on isolation
kubectl apply -f lab/k8s/api-mcp-lab-nodeports.yaml   # (on the Ubuntu VM)
ssh utm-homelab '/opt/homelab/repo/lab/scripts/verify-lab-isolation.sh'   # MUST pass

# 4. Phase-1 tests (on Kali, staged to /opt/lab-tests by Ansible)
#    nmap-exposure.sh · k8s-segmentation.sh · rate-limit.sh · mcp-auth-tests.py · api-zap-baseline.sh
```

Or drive steps 1–2 with the thin Terraform wrapper (`lab/terraform`).

## Kali maintenance (updates)

Kali is lab-only by default. To update it, temporarily attach a Shared NIC:

```bash
lab/scripts/kali-maintenance-nic.sh on --yes   # VM shut down; boot, apt update, shut down
lab/scripts/kali-maintenance-nic.sh off --yes  # remove it
ssh utm-homelab '.../verify-lab-isolation.sh'  # re-verify isolation
```

## Scope

Authorized testing targets only your own services on `10.66.6.0/24`. See
`ROE.md`. Deliberately vulnerable targets and Zeek/Suricata detection are later
phases, intentionally not included here.
