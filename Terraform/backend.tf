terraform {
  backend "azurerm" {
    resource_group_name  = "tf-test"
    storage_account_name = "aritftest"
    container_name       = "tftest"
    key                  = "prod.terraform.tftest"
  }
}