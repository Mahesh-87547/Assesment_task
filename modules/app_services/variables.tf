variable "app_name" {
  description = "Name of the App Service"
}

variable "location" {
  description = "Location of the App Service"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "app_service_plan_id" {
  description = "ID of the App Service Plan"
}

variable "num_staging_slots" {
  description = "Number of staging slots to create"
  default     = 0
}
