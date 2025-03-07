variable "Virtual_machine_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service"
  type        = string
}

variable "size" {
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

variable "network_interface" {
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
#add more Variables