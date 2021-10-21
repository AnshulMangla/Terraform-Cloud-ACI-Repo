# Provider Declaration
terraform {
  required_providers {
    aci = {
        source = "CiscoDevNet/aci"
    }
  }
}

# Provider Configuration
provider "aci" {
    url = "https://10.106.236.54"
    username = "pandapa"
    password = "cisco!123"
}

resource "aci_tenant" "anshul_terraform" {
    name = "anshul_terraform"
}