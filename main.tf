# Provider Declaration
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mel-ciscolabs-com"
    workspaces {
      name = "Terraform-ACI"
    }
  }
  required_providers {
    aci = {
        source = "CiscoDevNet/aci"
    }
  }
}

# Provider Configuration
provider "aci" {
    url = "https://sandboxapicdc.cisco.com"
    username = "admin"
    password = "!v3G@!4@Y"
}

resource "aci_tenant" "anshul_terraform" {
    name = "anshul_terraform"
}
