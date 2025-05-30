# Fetch the object ID of GitHub Actions workload identity
locals {
  resource_group_name = "rg-bootstrap-dev"
}
data "azuread_service_principal" "gh_oidc" {
  display_name = "terraform-gh-actions-app"
}

# Create Azure Key Vault via reusable module
module "keyvault" {
  source                     = "../../modules/key_vault"
  name                       = "kv-bootstrap-dev"
  env_name                   = "dev"
  location                   = "eastus"
  resource_group_name        = "rg-bootstrap-dev"
  tenant_id                  = var.tenant_id
  object_id                  = data.azuread_service_principal.gh_oidc.object_id
  sku_name                   = "standard"
  soft_delete_retention_days = 7
  purge_protection_enabled   = true
}