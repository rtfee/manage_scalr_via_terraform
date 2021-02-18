resource "github_repository" "example_a" {
  name        = var.repo_name
  private = true
}

resource "scalr_workspace" "example" {
  name           = var.workspace_name
  environment_id = var.env_id
  vcs_provider_id = var.provider_id
  vcs_repo {
    identifier = github_repository.example_a.full_name
    branch     = "main"
  }
}
