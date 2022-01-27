terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.19.1"
    }
  }
}

# Provider Setup

provider "github" {
  token        = "4g543hg563h56h3h656h56h56h56"
}
