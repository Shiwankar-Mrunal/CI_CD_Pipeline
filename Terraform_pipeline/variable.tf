variable "myarc" {
  type        = string
  description = "Name of my Azure Container Registry"
  default     = "myacrregistry123"
}

variable "web_app_name" {
  type        = string
  description = "Name of the web-app"
  default     = "Terrawebapp"
}

variable "client_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "client_secret" {
  type      = string
  sensitive = true
}
