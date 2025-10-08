resource "azurerm_app_service_plan" "app1"{
      name  =  var.app_service_plan_name
      location = var.azurerm.resource_group_location.myloc
      resource_group_name = var.azurerm_resource_group.myrg
      kind = "Windows"
      reserved = true

      sku {
        tier = "Basic"
        size = "B1"
      }
}
  
resource "azure_app_service" "my_web_app1"{
   name = unique_web_app
   resource_group_name = var.azurerm_resource_group.name
   location = var.azurerm.resource_group_location.location
   app_service_plan_id = azurerm_app_service_plan.app1.id

   
}

