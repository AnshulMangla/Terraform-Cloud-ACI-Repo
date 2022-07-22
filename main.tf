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
  username = var.aci_user
  password = var.aci_password
  url      = var.aci_url
  insecure = true
}

# ACI Tenant
resource "aci_tenant" "anshul_terraform" {
    name = "anshul_terraform"
}

# Define an ACI Tenant VRF Resource.
# resource "aci_vrf" "terraform_vrf" {
#    tenant_dn   = aci_tenant.anshul_terraform.id
#    description = "VRF Modified Using Terraform"
#    name        = "anshul_vrf2"
#}
