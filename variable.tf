variable "common_setting" {
  type        = map(string)
  description = "Common setting"
  default = {
    location = "Japan East"
    tags     = "portfolio"
  }
}

variable "rg_setting" {
  type        = map(string)
  description = "Resoucegroup setting"
  default = {
    name = "rg-portfolio-1"
  }
}

variable "asp_setting" {
  type        = map(string)
  description = "AppServicePlan setting"
  default = {
    name = "asp-portfolio-1"
  }
}

variable "as_setting" {
  type        = map(string)
  description = "AppServicePlan setting"
  default = {
    name = "as-portfolio-front-1"
  }
}

