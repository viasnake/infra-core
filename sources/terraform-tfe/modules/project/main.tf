resource "tfe_project" "main" {
  organization = var.organization
  name         = var.name
}
