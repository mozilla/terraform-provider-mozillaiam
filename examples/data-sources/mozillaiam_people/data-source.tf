terraform {
  required_providers {
    personapi = {
      source = "registry.opentofu.org/mozilla/personapi"
    }
  }
}

provider "personapi" {}

data "personapi_people" "example" {
  email = "jbuckley@mozilla.com"
}

output "example" {
  value = data.personapi_people.example
}
