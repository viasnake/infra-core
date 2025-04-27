resource "tfe_organization" "main" {
  name  = var.name
  email = var.email
}

resource "tfe_organization_default_settings" "main" {
  organization           = tfe_organization.main.name
  default_execution_mode = "remote"
}
