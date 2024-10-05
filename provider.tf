terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 3.0"
    }
  }
}

provider "openstack" {
  auth_url    = "https://cloud6.lsd.ufcg.edu.br:5000"
  user_name   = ""
  password    = ""
  domain_name = "LSD"
  tenant_name = "Provisionamento"
}