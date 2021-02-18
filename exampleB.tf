resource "github_repository" "example2" {
  name        = "my_repo1"
  description = "My awesome codebase"

  private = true
}

resource "scalr_workspace" "example2" {
  name           = "my-workspace-4"
  environment_id = "org-ssccu6d5ch64lqg"
  vcs_provider_id = "vcs-shdp0gg2vksl5pg"
  vcs_repo {
    identifier = github_repository.example2.full_name
    branch     = "main"
  }
}

resource "scalr_variable" "example_secret2" {
  key          = "my_secret"
  value        = "abc123"
  category     = "env"
  sensitive    = "true"
  workspace_id = scalr_workspace.example2.id
}

resource "scalr_variable" "example_key2" {
  key          = "my_key"
  value        = "abc123"
  category     = "env"
  sensitive    = "true"
  workspace_id = scalr_workspace.example2.id
}
