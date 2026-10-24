# lab/terraform

A **thin wrapper**, not a native UTM provider (none exists). Each resource shells
out to a reviewed script in `lab/scripts/`, so `terraform apply` is just an
ordered, recorded entrypoint for the same steps you can run by hand.

```bash
terraform init
terraform apply -var "repo_root=$PWD/../.." -var "auto_approve_scripts=true"
```

Order: inspect lab net → add Ubuntu Host NIC → create Kali VM (external drive) →
run Ansible. It does **not** install Kali (boot the VM and install from the ISO
between steps 3 and 4), and it does **not** replace the acceptance gate: run
`lab/scripts/verify-lab-isolation.sh` on the Ubuntu VM afterwards.
