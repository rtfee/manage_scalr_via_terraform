resource "scalr_workspace" "example2" {
  name           = "my-workspace-2"
  environment_id = "org-ssccu6d5ch64lqg"
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
