output "app_service_url" {
  value = module.app_service.app_service_url
}

output "staging_slot_urls" {
  value = module.app_service.staging_slot_urls
}

output "virtual_network_id" {
  value = module.virtual_network.virtual_network_id
}

output "subnet_id" {
  value = module.virtual_network.subnet_id
}
