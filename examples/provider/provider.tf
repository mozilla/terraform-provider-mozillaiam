terraform {
  required_providers {
    personapi = {
      source = "registry.opentofu.org/mozilla/personapi"
    }
  }
}

provider "personapi" {}
