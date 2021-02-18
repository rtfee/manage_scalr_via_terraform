resource "github_repository" "example" {
  name        = "my_repo"
  description = "My awesome codebase"

  private = true
}

resource "scalr_workspace" "example" {
  name           = "my-workspace-1"
  environment_id = "org-ssccu6d5ch64lqg"
  vcs_provider_id = "vcs-shdp0gg2vksl5pg"
  vcs_repo {
    identifier = github_repository.example.full_name
    branch     = "main"
  }
}

resource "scalr_variable" "example_secret" {
  key          = "my_secret"
  value        = "abc123"
  category     = "env"
  sensitive    = "true"
  workspace_id = scalr_workspace.example.id
}

resource "scalr_variable" "example_key" {
  key          = "my_key"
  value        = "abc123"
  category     = "env"
  sensitive    = "true"
  workspace_id = scalr_workspace.example.id
}
