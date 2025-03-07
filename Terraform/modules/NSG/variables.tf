variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for the App Service"
  type        = string
}

variable "network_security_group_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "subscription" {
  description = "Name of the subscription"
  type        = string
}

#Figure out how to make the security rules