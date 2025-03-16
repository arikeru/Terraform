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

variable "rule_name" {
  description = "Name of the rule"
  type        = string
}

variable "priotity" {
  description = "Priority of the rule"
  type        = string
}

variable "direction" {
  description = "Inbound or Outbound"
  type        = string
}

variable "access" {
  description = "Allow or Deny"
  type        = string
}

variable "protocol" {
  description = "Name of the protocol"
  type        = string
}

variable "source_port_range" {
  description = "Range of ports"
  type        = string
}

variable "destination_port_range" {
  description = "Range of portss"
  type        = string
}

variable "source_address_prefix" {
  description = "Address of protocol"
  type        = string
}

variable "destination_address_prefix" {
  description = "address of endpoint"
  type        = string
}