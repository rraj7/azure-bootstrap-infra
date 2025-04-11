variable "name" {
  description = "Name of the Key Vault"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "object_id" {
  description = "Object ID for Key Vault access policy"
  type        = string
}

variable "sku_name" {
  description = "SKU for the Key Vault"
  type        = string
}

variable "env_name" {
  description = "Environment name"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}