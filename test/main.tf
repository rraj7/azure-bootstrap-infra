provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "oidc_test" {
  name     = "rg-oidc-bootstrap-test"
  location = "East US"
}
