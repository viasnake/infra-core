# organization_policy_boolean

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 6.28.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.28.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_organization_policy.main](https://registry.terraform.io/providers/hashicorp/google/6.28.0/docs/resources/organization_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_constraint"></a> [constraint](#input\_constraint) | n/a | `string` | n/a | yes |
| <a name="input_enforced"></a> [enforced](#input\_enforced) | n/a | `bool` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
