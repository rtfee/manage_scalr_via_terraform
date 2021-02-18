terraform {
  required_providers {
    scalr = {
      source  = "scalr.com/scalr/scalr"
      version = "1.0.0"
    }
  }
}

provider "github" {
  token        = var.git_token
  organization = var.git_org
}
