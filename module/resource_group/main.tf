resource "azurerm_resource_group" "resource_group_template" {
  name     = var.rg_setting.rg_name
  location = var.common_setting.location
}