resource "azurerm_resource_group" "MY-RG"{
  name = var.myrg
  location = var.myloc
}



resource "azurerm_container_registry" "my-acr"{
    name = var.myarc
    resource_group_name = azurerm_resource_group.MY-RG.name
    location = azurerm_resource_group.My-RG.location

    #Stock keeping unit
    sku = "Basic"
    admin_enabled = "true"

    tags = {
        environment = "production"
    }
}

module "application" {
  source = "../modules"
  name1 = var.azurerm_resource_group.MY-RG.name
  location1 = var.azurerm_resource_group.MY-RG.location
  app_service_plan_name     = "MY-Plan"
  webapp_name               = "MY-WEB_APP"

}





