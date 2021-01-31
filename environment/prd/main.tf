# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group

module resource_group {
  source = "../../module/resource_group"
  rg_setting = var.rg_setting

}

# AppService Plan

module "app_service_plan" {
  source = "../../module/app_service_plan"
  app_service_plan_setting = var.app_service_plan_setting
  app_service_plan_location = 

}

# resource "azurerm_app_service" "as" {
#   name                = var.as_setting.name
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   app_service_plan_id = azurerm_app_service_plan.asp.id

#   site_config {
#     linux_fx_version = "NODE|10.14"
#   }
# }
