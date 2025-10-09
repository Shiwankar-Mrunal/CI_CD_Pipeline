resource "azurerm_service_plan" "app1" {
  name                = "Terraappserviceplan"
  location            = var.location
  resource_group_name = var.myrg
  os_type   = "Windows"
  sku_name  = "B1"
}

resource "azurerm_app_service" "my_web_app1" {
  name                = var.webapp_name
  location            = var.location
  resource_group_name = var.myrg
  app_service_plan_id = azurerm_service_plan.app1.id

  # Windows App Services don’t use Linux docker container settings
  # If you're deploying a .NET or classic app, you don’t need site_config unless needed
}