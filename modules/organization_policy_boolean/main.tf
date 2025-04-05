resource "google_organization_policy" "main" {
  org_id     = var.org_id
  constraint = var.constraint

  boolean_policy {
    enforced = var.enforced
  }
}
