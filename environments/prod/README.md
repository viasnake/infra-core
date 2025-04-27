# terraform-tfe

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.64.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudflare_access_workspace"></a> [cloudflare\_access\_workspace](#module\_cloudflare\_access\_workspace) | ../../modules/workspace | n/a |
| <a name="module_cloudflare_project"></a> [cloudflare\_project](#module\_cloudflare\_project) | ../../modules/project | n/a |
| <a name="module_cloudflare_tunnel_workspace"></a> [cloudflare\_tunnel\_workspace](#module\_cloudflare\_tunnel\_workspace) | ../../modules/workspace | n/a |
| <a name="module_dns_workspace"></a> [dns\_workspace](#module\_dns\_workspace) | ../../modules/workspace | n/a |
| <a name="module_googlecloud_project"></a> [googlecloud\_project](#module\_googlecloud\_project) | ../../modules/project | n/a |
| <a name="module_jp1_admin_whole_workspace"></a> [jp1\_admin\_whole\_workspace](#module\_jp1\_admin\_whole\_workspace) | ../../modules/workspace | n/a |
| <a name="module_oraclecloud_project"></a> [oraclecloud\_project](#module\_oraclecloud\_project) | ../../modules/project | n/a |
| <a name="module_oraclecloud_workspace"></a> [oraclecloud\_workspace](#module\_oraclecloud\_workspace) | ../../modules/workspace | n/a |
| <a name="module_organization"></a> [organization](#module\_organization) | ../../modules/organization | n/a |
| <a name="module_tfe_project"></a> [tfe\_project](#module\_tfe\_project) | ../../modules/project | n/a |
| <a name="module_tfe_workspace"></a> [tfe\_workspace](#module\_tfe\_workspace) | ../../modules/workspace | n/a |
| <a name="module_unfettered_project"></a> [unfettered\_project](#module\_unfettered\_project) | ../../modules/project | n/a |

## Resources

| Name | Type |
|------|------|
| [tfe_github_app_installation.main](https://registry.terraform.io/providers/hashicorp/tfe/0.64.0/docs/data-sources/github_app_installation) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | Terraform Cloud email | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | Terraform Cloud token | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
