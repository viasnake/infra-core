terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.64.0"
    }
  }
  required_version = ">= 1.11.0"
}
