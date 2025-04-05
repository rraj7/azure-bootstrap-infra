config {
  terraform_version = "1.5.7"
  required_version  = ">= 0.41.0"
  plugin_directory  = ".tflint.d/plugins"
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_naming_convention" {
  enabled = false  # you can enable this if you're picky
}