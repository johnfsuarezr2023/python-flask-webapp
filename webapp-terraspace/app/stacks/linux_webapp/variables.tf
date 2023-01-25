# Resource Group
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "tags" {
  description = ""
  type        = any
}

#Service Plan
variable "service_plan_name" {
  type = string

}
variable "service_plan_sku_name" {
  type = string

}
variable "service_plan_os_type" {
  type = string

}

# Windows WebApp
variable "linux_webapp_name" {
  type = string

}





