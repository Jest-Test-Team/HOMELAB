output "lab_subnet" {
  value = var.lab_subnet
}

output "next_step" {
  value = "Run lab/scripts/verify-lab-isolation.sh ON THE UBUNTU VM; it must pass before any testing."
}
