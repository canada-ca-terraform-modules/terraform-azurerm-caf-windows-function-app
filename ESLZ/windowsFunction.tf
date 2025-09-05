variable "windows-functions" {
  description = "Linux Azure functions to deploy"
  type = any
  default = {}
}

module "windows-function" {
  source = "github.com/canada-ca-terraform-modules/terraform-azurerm-caf-windows-function-app?ref=v1.0.3"
  for_each = var.windows-functions

  userDefinedString = each.key
  env = var.env
  group = var.group
  project = var.project
  resource_groups = local.resource_groups_all
  windows_function = each.value
  asp = local.asp_id
  subnets = local.subnets
  tags = var.tags
}