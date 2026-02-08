resource "cloudflare_tunnel_virtual_network" "main" {
  account_id         = var.account_id
  name               = var.name
  is_default_network = var.is_default_network
  comment            = var.comment
}
