resource "azurerm_app_service" "app_service" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id

  site_config {
    # Configure your app service here
  }

  lifecycle {
    ignore_changes = [
      # List any attributes you want to ignore changes for
    ]
  }
}

# Optional: Define staging slots here
resource "azurerm_app_service_slot" "staging_slots" {
  count                 = var.num_staging_slots
  name                  = "${var.app_name}-slot-${count.index}"
  app_service_name      = azurerm_app_service.app_service.name
  resource_group_name   = var.resource_group_name
  app_service_plan_id   = var.app_service_plan_id
  location              = var.location
}
