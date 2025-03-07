resource "azurerm_user" "user" {
    name            = var.user_principal_name
    display_name    = var.display_name
    password        = var.password
    active          = var.account_enabled
}