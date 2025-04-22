variable "env_name" {
  description = "Environment name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tenant_id" {
  description = "Azure AD Tenant ID"
  type        = string
}

variable "object_id" {
  description = "OIDC Principal Object ID"
  type        = string
}
