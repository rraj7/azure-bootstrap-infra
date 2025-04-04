provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "oidc_test" {
  name     = "rg-oidc-bootstrap-test"
  location = "East US"
}
