terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.6.0"
    }
  }
}

provider "github" {
    alias = "andres"
    token = var.token_personal
}

provider "github" {
    alias = "comu"
    token = var.token_comu
}