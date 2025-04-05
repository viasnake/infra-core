resource "tfe_workspace" "main" {
  name                   = var.name
  organization           = var.organization
  tag_names              = var.tag_names
  force_delete           = var.force_delete
  auto_apply             = var.auto_apply
  auto_apply_run_trigger = var.auto_apply_run_trigger
  queue_all_runs         = var.queue_all_runs
  working_directory      = var.working_directory

  vcs_repo {
    branch                     = var.vcs_branch
    identifier                 = var.vcs_repo_identifier
    github_app_installation_id = var.vcs_github_app_installation_id
  }
}
