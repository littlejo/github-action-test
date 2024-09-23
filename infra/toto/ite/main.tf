terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "random" {}

resource "random_string" "example" {
  length  = 16
  special = false
}

output "random_string_output" {
  value = random_string.example.result
}

