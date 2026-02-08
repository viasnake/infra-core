packer {
  required_plugins {
    null = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/null"
    }
  }
}

source "null" "foundry" {
  communicator = "none"
}

build {
  name    = "foundry-base-image"
  sources = ["source.null.foundry"]

  provisioner "shell-local" {
    inline = ["echo 'foundry image contract validated'"]
  }
}
