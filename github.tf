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
  owner = "devopsschool-demo-temporary"
}


resource "github_repository" "github-repo-1" {
  name        = "terraform-demo-4"
  description = "My awesome codebase"

  visibility = "public"
}
