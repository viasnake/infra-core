# jp1-admin-whole

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.28.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_admin_whole_project"></a> [admin\_whole\_project](#module\_admin\_whole\_project) | ../../modules/project | n/a |
| <a name="module_disableServiceAccountKeyCreation_policy"></a> [disableServiceAccountKeyCreation\_policy](#module\_disableServiceAccountKeyCreation\_policy) | ../../modules/organization_policy_boolean | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_GOOGLE_CREDENTIALS"></a> [GOOGLE\_CREDENTIALS](#input\_GOOGLE\_CREDENTIALS) | Google credentials | `string` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | Organization id | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region | `string` | `"us-central1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
