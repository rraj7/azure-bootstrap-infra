resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.env_name}-bootstrap"
  location = var.location
}

resource "azurerm_key_vault" "kv" {
  name                        = "kv-${var.env_name}-bootstrap"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    secret_permissions = ["Get", "List", "Set", "Delete"]
    key_permissions    = ["Get", "List"]
  }

  tags = {
    environment = var.env_name
  }
}