# prod

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gateway-prod-1"></a> [gateway-prod-1](#module\_gateway-prod-1) | ../../modules/tunnel | n/a |
| <a name="module_tunnel_route__prod-1"></a> [tunnel\_route\_\_prod-1](#module\_tunnel\_route\_\_prod-1) | ../../modules/tunnel_route | n/a |
| <a name="module_tunnel_virtual_network__prod-1"></a> [tunnel\_virtual\_network\_\_prod-1](#module\_tunnel\_virtual\_network\_\_prod-1) | ../../modules/tunnel_virtual_network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_account_id"></a> [cloudflare\_account\_id](#input\_cloudflare\_account\_id) | n/a | `string` | n/a | yes |
| <a name="input_cloudflare_api_token"></a> [cloudflare\_api\_token](#input\_cloudflare\_api\_token) | n/a | `string` | n/a | yes |
| <a name="input_secret"></a> [secret](#input\_secret) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
