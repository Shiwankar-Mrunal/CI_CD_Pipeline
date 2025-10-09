# resource "azurerm_service_plan" "app1" {
#   name                = "Terraappserviceplan"
#   location            = var.location
#   resource_group_name = var.myrg
#   os_type   = "Windows"
#   sku_name  = "B1"
# }

# resource "azurerm_app_service" "my_web_app1" {
#   name                = var.webapp_name
#   location            = var.location
#   resource_group_name = var.myrg
#   app_service_plan_id = azurerm_service_plan.app1.id

#   # Windows App Services don’t use Linux docker container settings
#   # If you're deploying a .NET or classic app, you don’t need site_config unless needed
# }

resource "azurerm_service_plan" "app1" {
  name                = "TerraAppServicePlan"
  location            = "westeurope" # updated region
  resource_group_name = var.myrg
  os_type             = "Windows"    # required
  sku_name            = "F1"         # Free tier (to avoid quota errors)
}

resource "azurerm_windows_web_app" "my_web_app1" {
  name                = var.webapp_name
  location            = "westeurope" # updated region
  resource_group_name = var.myrg
  service_plan_id     = azurerm_service_plan.app1.id

  site_config {
    always_on = false # Free tier does not support always_on = true
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}
