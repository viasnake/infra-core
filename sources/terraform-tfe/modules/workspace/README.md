# workspace

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.65.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.main](https://registry.terraform.io/providers/hashicorp/tfe/0.64.0/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | n/a | `bool` | `false` | no |
| <a name="input_auto_apply_run_trigger"></a> [auto\_apply\_run\_trigger](#input\_auto\_apply\_run\_trigger) | n/a | `bool` | `false` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | n/a | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | n/a | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | `""` | no |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | n/a | `bool` | `true` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | n/a | `list(string)` | `[]` | no |
| <a name="input_vcs_branch"></a> [vcs\_branch](#input\_vcs\_branch) | n/a | `string` | `""` | no |
| <a name="input_vcs_github_app_installation_id"></a> [vcs\_github\_app\_installation\_id](#input\_vcs\_github\_app\_installation\_id) | n/a | `string` | `""` | no |
| <a name="input_vcs_repo_identifier"></a> [vcs\_repo\_identifier](#input\_vcs\_repo\_identifier) | n/a | `string` | `""` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | n/a | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
