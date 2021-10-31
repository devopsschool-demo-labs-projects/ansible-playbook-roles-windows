terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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"
  organization = "devopsschool-demo-temporary"
  owner = "devops-school"
}


resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
}
