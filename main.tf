terraform {
  required_version = ">= 1.4.0"
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.28.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.41.0"
    }
  }
}