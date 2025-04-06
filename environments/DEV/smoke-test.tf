resource "azurerm_key_vault_secret" "test_secret" {
  name         = "smoke-test-secret"
  value        = "this-is-a-test"
  key_vault_id = module.keyvault.id

  lifecycle {
    ignore_changes = [
      value # prevent updates on every apply
    ]
  }
}
