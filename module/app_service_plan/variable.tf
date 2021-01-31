variable "app_service_plan_setting" {
  type        = map(string)
  description = "AppServicePlanの設定"
  default = {
    app_service_plan_name     = null
    app_service_plan_kind     = "Linux"
    app_service_plan_reserved = true

    sku = {
        app_service_plan_tier = "Free"
        app_service_plan_size = "F1"
    }

  }
}