variable "user_principal_name" {
  description = "Username for user in the form of an email"
  type        = string
}

variable "display_name" {
  description = "Display name for the user"
  type        = string
}

variable "password" {
  description = "Password for the user"
  type        = string
}

variable "account_enabled" {
  description = "This determines if the account is enabled"
  type        = Boolean
}
