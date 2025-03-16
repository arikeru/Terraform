resource "azurerm_resource_group" "example" {
    name            = var.resource_group_name
    location        = var.location
}


resource "azurerm_network_security_group" "example" {
  name                = var.network_security_group_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_virtual_network" "main"{
    name             = var.vnet_name
    address_space    = var.address_space
    location         = azurerm_resource_group.example.name
    resource_group_name = azurerm_resource_group.example.location
}
resource "azurerm_virtual_network" "vnet" {
    subscription            = var.subscription
    name                    = var.vnet_name
    location                = var.location
    resource_group          = var.resource_group_name
    address_space           = var.address_space
    subnet                  = var.subnet
    subnet_address_space    = var.subnet_address_space
}