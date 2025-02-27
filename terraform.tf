terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.67.0, < 4.0"
    }
  }
  required_version = ">= 1.3.4, < 1.6.0"
}
