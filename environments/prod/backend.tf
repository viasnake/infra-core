terraform {
  cloud {
    organization = "alflag"

    workspaces {
      name = "tfe"
    }
  }

  # backend "local" {
  #   path = "local.tfstate"
  # }
}
