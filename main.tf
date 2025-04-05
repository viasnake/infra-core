module "disableServiceAccountKeyCreation_policy" {
  source = "./modules/organization_policy_boolean"

  org_id     = var.org_id
  constraint = "constraints/iam.disableServiceAccountKeyCreation"
  enforced   = false
}

module "admin_project" {
  source = "./modules/project"

  name       = "jp1-admin-whole"
  project_id = "jp1-admin-whole"
  org_id     = var.org_id
}
