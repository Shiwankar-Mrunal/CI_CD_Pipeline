resource "azurerm_resource_group" "MY-RG" {
  name     = "TerraRG"
  location = "eastus"
}

resource "azurerm_container_registry" "my-acr" {
  name                = "TerraArc"
  resource_group_name = azurerm_resource_group.MY-RG.name
  location            = azurerm_resource_group.MY-RG.location

  sku           = "Basic"
  admin_enabled = true

  tags = {
    environment = "production"
  }
}

module "application" {
  source                = "./modules"
  myrg                  = azurerm_resource_group.MY-RG.name
  location              = azurerm_resource_group.MY-RG.location
  app_service_plan_name = var.myarc
  webapp_name           = var.web_app_name
}
