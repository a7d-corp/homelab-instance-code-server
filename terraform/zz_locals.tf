locals {
  vmid               = 204
  snippet_root_dir   = "/mnt/pve/cloudinit"
  snippet_dir        = "snippets"
  primary_ip_gateway = cidrhost(var.net0_network_cidr, 1)
  ip_offset          = 7
  instance_name      = "code-server"
  pm_host_address    = data.vault_generic_secret.terraform_generic.data["host"]
}
