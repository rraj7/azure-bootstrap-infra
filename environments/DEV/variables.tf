variable "subscription_id" {
  description = "The Azure Subscription ID for the development environment"
  type        = string
}

variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "rg-bootstrap-dev"
}

variable "tenant_id" {
  type = string
}

variable "env_name" {
  default = "DEV"
  type = string
}