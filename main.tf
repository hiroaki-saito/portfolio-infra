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

resource "azurerm_resource_group" "rg" {
  name     = var.rg_setting.name
  location = var.common_setting.location

  tags = {
    name = var.common_setting.tags
  }
}

# AppService Plan

resource "azurerm_app_service_plan" "asp" {
  name                = var.asp_setting.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "as" {
  name                = var.as_setting.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    linux_fx_version = "NODE|10.14"
  }
}
