terraform {
  cloud {
    organization = "alflag"

    workspaces {
      name = "googlecloud"
    }
  }

  # backend "local" {
  #   path = "local.tfstate"
  # }
}
