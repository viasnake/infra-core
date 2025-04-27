terraform {
  cloud {
    organization = "alflag"

    workspaces {
      name = "jp1-admin-whole"
    }
  }

  # backend "local" {
  #   path = "local.tfstate"
  # }
}
