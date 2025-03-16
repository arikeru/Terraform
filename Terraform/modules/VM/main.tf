resource "azurerm_resource_group" "example" {
    name            = var.resource_group_name
    location        = var.location
}

resource "azurerm_virtual_network" "main"{
    name             = var.vnet_name
    address_space    = var.address_space
    location         = azurerm_resource_group.example.name
    resource_group_name = azurerm_resource_group.example.location
}

resource "azurerm_subnet" "internal"{
    name            = var.subnet_name
    address_space   = var.subnet_address_space
    resource_group_name = azurerm_resource_group.example.name
    virtual_network_name = azurerm_virtual_network.main.name
}

resource "azurerm_network_interface" "main" {
  name                = var.network_interface_ids
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = var.ip_configuration
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}
resource "azurerm_virtual_machine" "main" {
  name                  = var.virtual_machine_name
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.vm_size

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_user
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
  }
}

resource "azurerm_virtual_machine" "vm" {
    name                    = var.Virtual_machine_name
    subscription            = var.subscription
    name                    = var.vnet_name
    location                = var.location
    resource_group          = var.resource_group_name


    size                    = var.vm_size
    admin_username          = var.admin_user
    admin_password          = var.admin_password
    image                   = var.image
    network_interface_ids   = var.network_interface_ids
    address_space           = var.address_space
    subnet                  = var.subnet
    subnet_address_space    = var.subnet_address_space
    storage_os_disk         = var.storage_os_disk
    component               = "Microsoft-Windows-Shell-Setup"
    setting_name            = var.setting_name
}