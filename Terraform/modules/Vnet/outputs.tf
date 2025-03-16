output "name" {
  description = "Name of VM"
  value       = azurerm_virtual_network.vnet.name
}

output "location" {
  description = "Location of the VM"
  value       = azurerm_virtual_network.vnet.location
}

output "address_space" {
  description = "Address space of the VM"
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet" {
  description = "Name of the Subnet"
  value       = azurerm_virtual_network.vnet.subnet
}

output "subnet_address" {
  description = "Address space of the Subnet"
  value       = azurerm_virtual_network.vnet.subnet_address_space
}