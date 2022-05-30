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

# ACI Tenant
#resource "aci_tenant" "anshul_terraform" {
#    name = "anshul_terraform"
#}

# Define an ACI Tenant VRF Resource.
#resource "aci_vrf" "terraform_vrf" {
#    tenant_dn   = aci_tenant.anshul_terraform.id
#    description = "VRF Modified Using Terraform"
#    name        = "anshul_vrf2"
#}
