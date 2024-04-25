variable "app_name" {
  description = "Name of the App Service"
}

variable "location" {
  description = "Location of the resources"
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

variable "virtual_network_name" {
  description = "Name of the virtual network"
}

variable "address_space" {
  description = "Address space of the virtual network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefix for the subnet"
}
