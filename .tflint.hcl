plugin "azurerm" {
  enabled = true
  version = "0.20.0"  # Latest at the time of writing, adjust if needed
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

config {
  terraform_version = "1.5.7"
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}