variable "virtual_machine_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service"
  type        = string
}

variable "vm_size" {
  description = "How big you want the VM"
  type        = string
  default     = "Standdard_B1s"
}

variable "admin_user" {
  description = "Username for administrator"
  type        = string
}

variable "admin_password" {
  description = "Password for the addministrator"
  type        = string
}


variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}


variable "image" {
  description = "Name of the image"
  type        = string
}

variable "network_interface_ids" {
  description = "Name of the Network Interface"
  type        = string
}

variable "vnet_name" {
  description = "Name of Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The size of the address space"
  type        = string
}

variable "subnet_name" {
  description = "Name of a subnet in the vnet"
  type        = string
}

variable "subnet_address_space" {
  description = "The size of the address space"
  type        = string
}

variable "storage_os_disk" {
  description = "What kind of OS"
  type        = string
}

variable "setting_name" {
  description = "Specifies the name of the setting to which the content applies."
  type        = string
}

variable "content" {
  description = "Specifies the base-64 encoded XML formatted content that is added to the unattend.xml file for the specified path and component."
  type        = string
}

variable "enabled" {
  description = "Should Boot Diagnostics be enabled for this Virtual Machine?"
  type        = string
}

variable "storage_uri" {
  description = "The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files."
  type        = string
}

variable "ultra_ssd_enabled" {
  description = "Should Ultra SSD disk be enabled for this Virtual Machine? Changing this forces a new resource to be created."
  type        = string
}

variable "type" {
  description = " Specifies the type of Managed Service Identity that should be configured on this Virtual Machine."
  type        = string
}

variable "computer_name" {
  description = "  Specifies the name of the Virtual Machine."
  type        = string
}

variable "disable_password_authentication" {
  description = " Specifies whether password authentication should be disabled."
  type        = string
}

variable "source_vault_id" {
  description = "Specifies the ID of the Key Vault to use."
  type        = string
}

variable "type" {
  description = " Specifies the type of Managed Service Identity that should be configured on this Virtual Machine."
  type        = string
}
#add more Variables