variable "common_setting" {
  type        = map(string)
  description = "共通設定"
  default = {
    location = "Japan East"
  }
}

variable "rg_setting" {
  type        = map(string)
  description = "リソースグループの設定"
  default = {
    rg_name = "rg-portfolio-1"
  }
}

variable "app_service_plan_setting" {
  type        = map(string)
  description = "AppServicePlanの設定"
  default = {
    app_service_plan_name     = "asp-portfolio-1"
    app_service_plan_location = null
    app_service_plan_resource_group_name = null
    app_service_plan_kind     = "Linux"
    app_service_plan_reserved = true

    sku = {
        app_service_plan_tier = "Free"
        app_service_plan_size = "F1"
    }
  }
}

