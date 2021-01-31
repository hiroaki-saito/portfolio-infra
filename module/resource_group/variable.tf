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
    rg_name = null
  }
}