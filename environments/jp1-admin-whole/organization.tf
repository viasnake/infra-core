module "disableServiceAccountKeyCreation_policy" {
  source = "../../modules/organization"

  org_id     = var.org_id
  constraint = "constraints/iam.disableServiceAccountKeyCreation"
  enforced   = false
}
