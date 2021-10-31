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
