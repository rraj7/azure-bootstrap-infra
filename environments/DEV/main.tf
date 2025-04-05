provider "azurerm" {
  features {}
}

# Optional: Use this to create SPs dynamically for legacy/non-OIDC deployments
# module "service_principal" {
#   source           = "../../modules/service_principal"
#   application_name = "terraform-service-principal-dev"
#   secret_end_date  = "2099-12-31T23:59:59Z"
#   role             = "Contributor"
#   scope            = "/subscriptions/${var.subscription_id}"
# }

data "azuread_service_principal" "gh_oidc" {
  display_name = "terraform-gh-actions-app"
}

module "keyvault" {
  source              = "../../modules/key_vault"
  name                = "kv-bootstrap-${var.env_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  object_id           = data.azuread_service_principal.gh_oidc.object_id
}