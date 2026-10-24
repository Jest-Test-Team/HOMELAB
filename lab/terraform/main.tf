terraform {
  required_version = ">= 1.6.0"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.0"
    }
    external = {
      source  = "hashicorp/external"
      version = ">= 2.3.0"
    }
  }
}

locals {
  scripts = "${var.repo_root}/lab/scripts"
  env = {
    HOMELAB_VOLUME = var.homelab_volume
    LAB_SUBNET     = var.lab_subnet
    LAB_UBUNTU_IP  = var.lab_ubuntu_ip
    LAB_KALI_IP    = var.lab_kali_ip
    KALI_VCPU      = tostring(var.kali_vcpu)
    KALI_MEM_MIB   = tostring(var.kali_mem_mib)
    KALI_DISK_GIB  = tostring(var.kali_disk_gib)
  }
  yes = var.auto_approve_scripts ? "--yes" : ""
}

# 1. Inspect the lab network prerequisites (read-only).
data "external" "lab_net" {
  program = ["bash", "-c", "${local.scripts}/lab-net.sh >/dev/stderr 2>&1 || true; echo '{\"checked\":\"true\"}'"]
}

# 2. Add the Host-mode lab NIC to the existing Ubuntu VM.
resource "null_resource" "ubuntu_lab_nic" {
  triggers = { subnet = var.lab_subnet, ubuntu_ip = var.lab_ubuntu_ip }
  provisioner "local-exec" {
    command     = "${local.scripts}/ubuntu-add-lab-nic.sh ${local.yes}"
    environment = local.env
  }
}

# 3. Create the Kali VM on the external drive (single Host NIC).
resource "null_resource" "kali_vm" {
  depends_on = [null_resource.ubuntu_lab_nic]
  triggers   = { vcpu = var.kali_vcpu, mem = var.kali_mem_mib, disk = var.kali_disk_gib }
  provisioner "local-exec" {
    command     = "${local.scripts}/make-kali-vm.sh ${local.yes}"
    environment = local.env
  }
}

# 4. Configure the guests (static IPs, firewalls, tools). Runs after both VMs
#    are up; Ansible reaches Kali via a ProxyJump through Ubuntu.
resource "null_resource" "ansible" {
  depends_on = [null_resource.kali_vm]
  triggers   = { always = timestamp() }
  provisioner "local-exec" {
    working_dir = "${var.repo_root}/lab/ansible"
    command     = "ansible-playbook site.yml"
  }
}
