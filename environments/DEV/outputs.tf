output "key_vault_name" {
  description = "Name of the Key Vault created"
  value       = module.keyvault.name
}

output "key_vault_id" {
  description = "Resource ID of the Key Vault"
  value       = module.keyvault.id
}

output "key_vault_uri" {
  description = "The DNS URI of the Key Vault"
  value       = module.keyvault.vault_uri
}