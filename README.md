# Mozilla IAM Terraform Provider

The `mozilla/personapi` provider reads people and group membership from Mozilla's IAM Person API.

## Using the provider

```hcl
terraform {
  required_providers {
    personapi = {
      source = "registry.terraform.io/mozilla/personapi"
    }
  }
}

provider "personapi" {}

data "personapi_people" "person" {
  email = "person@mozilla.com"
}

data "personapi_group" "staff" {
  ldap_group = "team_moco"
  staff      = true
}
```

Set `AUTH0_CLIENT_ID` and `AUTH0_CLIENT_SECRET` environment variables to credentials authorized for the Person API.

## Developing the Provider

If you wish to work on the provider, you'll first need [Go](http://www.golang.org) installed on your machine.

To format code, lint code, generate documentation, build the provider, and install the provider run `make`

To run the unit tests, run `make test`

To run the acceptance tests, set `AUTH0_CLIENT_ID` and `AUTH0_CLIENT_SECRET` environment variables and run `make testacc`. Note that these tests will take several minutes to run.

## Releasing the Provider

Before releasing a new version of the provider, ensure that all acceptance tests are passing for the commit that will be tagged.

Tag a new version of the provider, and goreleaser will [release that version](https://github.com/mozilla/terraform-provider-personapi/actions/workflows/release.yml)

The provider will be published to the following registries:

- [Opentofu registry](https://search.opentofu.org/provider/mozilla/personapi/latest)
- [Terraform registry](https://registry.terraform.io/providers/mozilla/personapi/latest)
