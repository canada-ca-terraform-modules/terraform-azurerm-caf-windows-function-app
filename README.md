<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | github.com/canada-ca-terraform-modules/terraform-azurerm-caf-storage_accountV2.git | v1.0.5 |

## Resources

| Name | Type |
|------|------|
| [azurerm_windows_function_app.linux-function](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asp"></a> [asp](#input\_asp) | Object containing a map of name and ID for the App Service Plan in the target subscription | `any` | `null` | no |
| <a name="input_env"></a> [env](#input\_env) | (Required) Env part of the name of the function app | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | (Required) Group part of the name of the function app | `string` | n/a | yes |
| <a name="input_windows_function"></a> [linux\_function](#input\_linux\_function) | Object description all the function parameters | `any` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure location where the function will be located | `string` | `"canadacentral"` | no |
| <a name="input_project"></a> [project](#input\_project) | (Required) Project part of the name of the function app | `string` | n/a | yes |
| <a name="input_resource_groups"></a> [resource\_groups](#input\_resource\_groups) | (Required) List of resource groups in the target project | `any` | `null` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Object containing subnet objects of the target project | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to the function app | `map(string)` | `{}` | no |
| <a name="input_userDefinedString"></a> [userDefinedString](#input\_userDefinedString) | (Required) UserDefinedString part of the name of the function app | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_windows_function_app_id"></a> [linux\_function\_app\_id](#output\_linux\_function\_app\_id) | Outputs the function app id |
| <a name="output_windows_function_app_name"></a> [linux\_function\_app\_name](#output\_linux\_function\_app\_name) | Outputs the function app name |
| <a name="output_windows_function_app_object"></a> [linux\_function\_app\_object](#output\_linux\_function\_app\_object) | Outputs the entire function app object |
<!-- END_TF_DOCS -->