module "tfe_service_account" {
  source = "../../modules/service_account"

  project      = var.project_id
  account_id   = "tfe-service-account"
  display_name = "Terraform Cloud Service Account"
  description  = "Terraform Cloud 用の Service Account"
}
