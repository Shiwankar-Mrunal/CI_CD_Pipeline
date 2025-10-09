variable "myarc"{
    type = string
    description = "Name of my azure container registery"
    default =   "myacrregistry123"
}

variable "web_app_name"{
    type = string
    description = "Name of the web-app"
    default = "Terrawebapp"
}

variable "client_id" {}
variable "tenant_id" {}
variable "subscription_id" {}
variable "client_secret" {}