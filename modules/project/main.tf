resource "google_project" "main" {
  name                = var.name
  project_id          = var.project_id
  org_id              = var.org_id
  auto_create_network = var.auto_create_network
}
