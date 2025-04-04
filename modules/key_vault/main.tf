# Create the Azure Key Vault
resource "azurerm_key_vault" "example" {
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.current.tenant_id

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.service_principal_object_id
    secret_permissions = [
      "get", "list", "set", "delete",
    ]
  }
}

# Add Secrets to the Key Vault
resource "azurerm_key_vault_secret" "client_id" {
  name         = "client-id"
  value        = var.client_id
  key_vault_id = azurerm_key_vault.example.id
}

resource "azurerm_key_vault_secret" "client_secret" {
  name         = "client-secret"
  value        = var.client_secret
  key_vault_id = azurerm_key_vault.example.id
}
