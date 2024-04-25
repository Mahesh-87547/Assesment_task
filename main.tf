module "app_service" {
  source              = "./modules/app_service"
  app_name            = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  num_staging_slots   = var.num_staging_slots
}

module "virtual_network" {
  source               = "./modules/virtual_network"
  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space
  subnet_name          = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  resource_group_name  = var.resource_group_name
}
