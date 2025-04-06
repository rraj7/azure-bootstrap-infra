resource "azurerm_key_vault" "this" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  purge_protection_enabled    = var.purge_protection_enabled
  soft_delete_retention_days  = var.soft_delete_retention_days

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    secret_permissions = ["Get", "Set", "List"]
  }

  tags = {
    environment = var.env_name
  }
}