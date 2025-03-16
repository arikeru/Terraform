resource "azurerm_virtual_network" "vnet" {
    subscription            = var.subscription
    name                    = var.vnet_name
    location                = var.location
    resource_group          = var.resource_group_name
    address_space           = var.address_space
    subnet                  = var.subnet
    subnet_address_space    = var.subnet_address_space
}