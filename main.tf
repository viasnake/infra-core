data "tfe_github_app_installation" "main" {
  name = "alflag-team"
}

module "organization" {
  source = "./modules/organization"

  name  = "alflag"
  email = var.email
}

module "alflag_project" {
  source = "./modules/project"

  name         = "alflag"
  organization = module.organization.name
}

module "publiccloud_project" {
  source = "./modules/project"

  name         = "publiccloud"
  organization = module.organization.name
}

# Oracle Cloud
module "oraclecloud_workspace" {
  source = "./modules/workspace"

  name                           = "oraclecloud"
  organization                   = module.organization.name
  auto_apply                     = true
  auto_apply_run_trigger         = true
  working_directory              = "environments/prod"
  vcs_repo_identifier            = "alflag-team/terraform-oraclecloud"
  vcs_github_app_installation_id = data.tfe_github_app_installation.main.id
}

# Google Cloud
module "jp1-admin-whole_workspace" {
  source = "./modules/workspace"

  name                           = "jp1-admin-whole"
  organization                   = module.organization.name
  auto_apply                     = true
  auto_apply_run_trigger         = true
  working_directory              = "environments/jp1-admin-whole"
  vcs_repo_identifier            = "alflag-team/terraform-googlecloud"
  vcs_github_app_installation_id = data.tfe_github_app_installation.main.id
}

# Cloudflare
module "cloudflare_project" {
  source = "./modules/project"

  name         = "cloudflare"
  organization = module.organization.name
}

module "cloudflare_access_workspace" {
  source = "./modules/workspace"

  name                           = "cloudflare-access"
  organization                   = module.organization.name
  auto_apply                     = true
  auto_apply_run_trigger         = true
  working_directory              = "environments/prod"
  vcs_repo_identifier            = "alflag-team/terraform-cloudflare-access"
  vcs_github_app_installation_id = data.tfe_github_app_installation.main.id
}

module "cloudflare_tunnel_workspace" {
  source = "./modules/workspace"

  name                           = "cloudflare-tunnel"
  organization                   = module.organization.name
  auto_apply                     = true
  auto_apply_run_trigger         = true
  working_directory              = "environments/prod"
  vcs_repo_identifier            = "alflag-team/terraform-cloudflare-tunnel"
  vcs_github_app_installation_id = data.tfe_github_app_installation.main.id
}

module "dns_workspace" {
  source = "./modules/workspace"

  name                           = "dns"
  organization                   = module.organization.name
  auto_apply                     = true
  auto_apply_run_trigger         = true
  vcs_repo_identifier            = "alflag-team/terraform-dns"
  vcs_github_app_installation_id = data.tfe_github_app_installation.main.id
}

# Terraform Cloud
module "tfe_workspace" {
  source = "./modules/workspace"

  name                           = "tfe"
  organization                   = module.organization.name
  auto_apply                     = true
  auto_apply_run_trigger         = true
  vcs_repo_identifier            = "alflag-team/terraform-tfe"
  vcs_github_app_installation_id = data.tfe_github_app_installation.main.id
}
