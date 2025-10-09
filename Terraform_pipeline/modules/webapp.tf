
resource "azurerm_app_service_plan" "app1"{
      name  =  "Terraappserviceplan"
      location = var.location
      resource_group_name = var.myrg
      kind = "Windows"
      reserved = true

      sku {
        tier = "Basic"
        size = "B1"
      }
}
  
resource "azurerm_app_service" "my_web_app1"{
   name = "Terrawebapp"
   resource_group_name = var.myrg
   location = var.location
   app_service_plan_id = azurerm_app_service_plan.app1.id

# site_config {
#   linux_fx_version = "DOCKER|myacrregistry123.azurecr.io/web-app:latest"
# }

#   app_settings = {
#     "DOCKER_REGISTRY_SERVER_URL"      = "https://${azurerm_container_registry.acr.login_server}"
#     "DOCKER_REGISTRY_SERVER_USERNAME" = azurerm_container_registry.acr.admin_username
#     "DOCKER_REGISTRY_SERVER_PASSWORD" = azurerm_container_registry.acr.admin_password
#   }
}































# resource "azurerm_app_service_plan" "app1" {
#   name                = "Terra-app-service-plan"
#   location            = var.azurerm_resource_group.myloc
#   resource_group_name = var.azurerm_resource_group.myrg
#   kind                = "Windows"
#   reserved            = true

#   sku {
#     tier = "Basic"
#     size = "B1"
#   }
# }

# resource "azure_app_service" "my_web_app1" {
#   name                = var.webapp_name
#   resource_group_name = var.azurerm_resource_group.name
#   location            = var.azurerm_resource_group.myloc
#   app_service_plan_id = var.azurerm_app_service_plan.app1.id

#   # site_config {
#   #   linux_fx_version = "DOCKER|myacrregistry123.azurecr.io/web-app:latest"
#   # }

#   # app_settings = {
#   #   "DOCKER_REGISTRY_SERVER_URL"      = "https://${azurerm_container_registry.acr.login_server}"
#   #   "DOCKER_REGISTRY_SERVER_USERNAME" = azurerm_container_registry.acr.admin_username
#   #   "DOCKER_REGISTRY_SERVER_PASSWORD" = azurerm_container_registry.acr.admin_password
#   # }
# }

