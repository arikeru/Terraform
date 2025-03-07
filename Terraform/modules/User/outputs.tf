output "name" {
  description = "Name of User"
  value       = azurerm_user.user.name
}

output "display_name" {
  description = "Display name of the user"
  value       = azurerm_user.display_name
}

output "password" {
  description = "Password of the user"
  value       = azurerm_user.password
}

output "active" {
  description = "Determines if the user is enabled"
  value       = azurerm_user.account_enabled
}