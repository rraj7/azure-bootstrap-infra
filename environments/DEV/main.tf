# Fetch the object ID of GitHub Actions workload identity
locals {
  resource_group_name = "rg-bootstrap-${var.env_name}"
}
data "azuread_service_principal" "gh_oidc" {
  display_name = "terraform-gh-actions-app"
}

# Deploy Azure Key Vault using a secure module
module "keyvault" {
  source              = "../../modules/key_vault"
  name                = "kv-${var.env_name}"
  location            = var.location
  resource_group_name = local.resource_group_name
  tenant_id           = var.tenant_id
  object_id           = data.azuread_service_principal.gh_oidc.object_id
  sku_name            = "standard"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Purge",
      "Recover",
      "Backup",
      "Restore"
    ]
  }

  tags = {
    environment = var.env_name
  }
}
