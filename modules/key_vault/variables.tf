variable "name" {
  description = "Name of the Key Vault"
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "object_id" {
  type = string
}

variable "env_name" {
    type = string
}

variable "sku_name" {
  type = string
}

variable "soft_delete_retention_days" {
  description = "Days to retain soft-deleted vault"
  type        = number
  default     = 7
}

variable "purge_protection_enabled" {
  description = "Enable purge protection"
  type        = bool
  default     = true
}