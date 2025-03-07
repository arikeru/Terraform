terraform {
  required_version = ">=1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.64.0, <4.0.0"
    }
  }

}

provider "azurerm" {
  features {}
}