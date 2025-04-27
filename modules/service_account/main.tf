resource "google_project_service" "main" {
  project            = var.project
  service            = "iam.googleapis.com"
  disable_on_destroy = false
}

resource "google_service_account" "main" {
  account_id   = var.account_id
  display_name = var.display_name
  description  = var.description
  disabled     = var.disabled
  project      = var.project

  depends_on = [google_project_service.main]
}
