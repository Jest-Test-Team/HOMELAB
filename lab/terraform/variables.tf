# Thin Terraform wrapper over lab/scripts/*. This is NOT a native UTM provider:
# UTM has no Terraform provider, so each resource shells out to a reviewed
# script. Terraform gives one ordered `apply` entrypoint and records which steps
# have run. All heavy artifacts stay on the external drive.

variable "repo_root" {
  type        = string
  description = "Absolute path to the HOMELAB repo checkout."
}

variable "homelab_volume" {
  type        = string
  description = "External drive mount holding VMs/ISO/Images/Backups."
  default     = "/Volumes/HOMELAB"
}

variable "lab_subnet" {
  type    = string
  default = "10.66.6.0/24"
}

variable "lab_ubuntu_ip" {
  type    = string
  default = "10.66.6.10"
}

variable "lab_kali_ip" {
  type    = string
  default = "10.66.6.20"
}

variable "kali_vcpu" {
  type    = number
  default = 2
}

variable "kali_mem_mib" {
  type    = number
  default = 3072
}

variable "kali_disk_gib" {
  type    = number
  default = 40
}

variable "auto_approve_scripts" {
  type        = bool
  description = "Pass --yes to the lifecycle scripts (they mutate VM config)."
  default     = false
}
