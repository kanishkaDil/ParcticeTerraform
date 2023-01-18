terraform {
  cloud {
    organization = "tutorial-specific-organization"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }
}

provider "aws" {
  region = var.region
}
