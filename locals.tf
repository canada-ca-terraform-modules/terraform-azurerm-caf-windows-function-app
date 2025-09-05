locals {
  resource_group_name = strcontains(var.windows_function.resource_group, "/resourceGroups/") ? regex("[^\\/]+$", var.windows_function.resource_group) : var.resource_groups[var.windows_function.resource_group].name
  asp                 = strcontains(var.windows_function.asp, "/resourceGroups/") ? var.windows_function.asp : var.asp[var.windows_function.asp]
  storage_account_name = try(var.windows_function.custom_storage_account, null) != null ? module.storage_account[0].name : var.windows_function.storage_account_name
  subnet_id = try(var.windows_function.virtual_network_subnet_id, null) != null ?  strcontains(var.windows_function.virtual_network_subnet_id, "/resourceGroups/") ? var.windows_function.virtual_network_subnet_id : var.subnets[var.windows_function.virtual_network_subnet_id].id : null
}
