terraform {
  cloud {
    organization = "alflag"

    workspaces {
      name = "cloudflare-tunnel"
    }
  }

  # backend "local" {
  #   path = "local.tfstate"
  # }
}
