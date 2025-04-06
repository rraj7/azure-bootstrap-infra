plugin "azurerm" {
  enabled = true
  version = "0.20.0" # Match the latest from: https://github.com/terraform-linters/tflint-ruleset-azurerm/releases
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# Enable or configure rules
rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}

# Example azurerm-specific rule
rule "azurerm_keyvault_enable_rbac_authorization" {
  enabled = true
}