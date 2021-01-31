resource "azurerm_app_service_plan" "app_service_plan_template" {
  name                = var.app_service_plan_setting.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = var.app_service_plan_setting.kind
  reserved            = var.app_service_plan_setting.reserved

  sku {
    tier = var.app_service_plan_setting.sku.tier
    size = var.app_service_plan_setting.sku.size
  }
}