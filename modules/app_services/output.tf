output "app_service_url" {
  value = azurerm_app_service.app_service.default_site_hostname
}

output "staging_slot_urls" {
  value = [for slot in azurerm_app_service_slot.staging_slots : slot.default_site_hostname]
}
