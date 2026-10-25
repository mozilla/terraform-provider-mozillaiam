terraform {
  required_providers {
    personapi = {
      source = "registry.opentofu.org/mozilla/personapi"
    }
  }
}

provider "personapi" {}

data "personapi_group" "example" {
  ldap_group = "team_moco"
  staff      = true
}

output "example" {
  value = data.personapi_group.example
}
