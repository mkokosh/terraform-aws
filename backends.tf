terraform {
  cloud {
    organization = "vnetworkers-terraform"

    workspaces {
      name = "vnet-dev"
    }
  }
}