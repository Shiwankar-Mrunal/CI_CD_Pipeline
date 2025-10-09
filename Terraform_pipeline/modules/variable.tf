
variable "myrg" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for the resources"
}

variable "app_service_plan_name" {
  type        = string
  description = "Name of the App Service Plan"
}

variable "webapp_name" {
  type        = string
  description = "Name of the Web App (App Service)"
}

