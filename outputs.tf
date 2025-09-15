output "resource_group" {
  value = module.rg.rg_name
}

output "storage_account" {
  value = module.storage.storage_id
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "vnet_id" {
  value = module.network.vnet_id
}
