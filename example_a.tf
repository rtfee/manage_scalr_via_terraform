resource "github_repository" "example_a" {
  name        = "code_name_woohoo"
  private = true
}

resource "scalr_workspace" "example" {
  name           = "code_name_woohoo"
  environment_id = "org-ssccu6d5ch64lqg"
  vcs_provider_id = var.provider_id
  vcs_repo {
    identifier = github_repository.example_a.full_name
    branch     = "main"
  }
}
