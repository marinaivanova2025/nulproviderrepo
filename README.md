# nulproviderrepo

I used one tf file.

I defined the terraform block with the required provider null:

terraform {

  required_providers {
    null = {
      source  = "registry.terraform.io/hashicorp/null"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.2"
}

Form Null provider documentation page I took a code snippet to echo "Hello World"

https://registry.terraform.io/providers/hashicorp/null/latest/docs/guides/terraform-migration

I initialized and applied the configuration and it displayed the message.

These are the last lines of the apply:

 Enter a value: yes

null_resource.example: Creating...
null_resource.example: Provisioning with 'local-exec'...
null_resource.example (local-exec): Executing: ["/bin/sh" "-c" "echo 'Hello, World!'"]
null_resource.example (local-exec): Hello, World!
null_resource.example: Creation complete after 0s [id=4541115345286427396]
