terraform {

  required_providers {
    null = {
      source  = "registry.terraform.io/hashicorp/null"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.2"
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Hello, World!'"
  }
}