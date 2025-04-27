module "admin_whole_project" {
  source = "../../modules/project"

  name       = var.project_id
  project_id = var.project_id
  org_id     = var.org_id
}
