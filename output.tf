output "windows_function_app_object" {
  description = "Outputs the entire function app object"
  value = azurerm_windows_function_app.windows-function
}

output "windows_function_app_name" {
  description = "Outputs the function app name"
  value = azurerm_windows_function_app.windows-function.name
}

output "windows_function_app_id" {
  description = "Outputs the function app id"
  value = azurerm_windows_function_app.windows-function.id
}