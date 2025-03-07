output "name" {
  description = "Name of VM"
  value       = azurerm_virtual_machine.vm.name
}

output "location" {
  description = "Location of the VM"
  value       = azurerm_virtual_machine.vm.location
}

output "address_space" {
  description = "Address space of the VM"
  value       = azurerm_virtual_machine.vm.address_space
}

output "subnet" {
  description = "Name of the Subnet"
  value       = azurerm_virtual_machine.vm.subnet
}

output "subnet_address" {
  description = "Address space of the Subnet"
  value       = azurerm_virtual_machine.vm.subnet_address_space
}