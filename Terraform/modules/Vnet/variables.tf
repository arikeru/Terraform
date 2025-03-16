variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service"
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

variable "subscription" {
  description = "Name of the subscription"
  type        = string
}

variable "network_security_group_name" {
  description = "Name of the "NSG
  type        = string
}