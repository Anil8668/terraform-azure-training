provider "azurerm" {
  features {}
  subscription_id = "4a42265d-a131-4bb0-9cce-ced76a68702f"
}

module "rg" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "storage" {
  source               = "./modules/storage_account"
  rg_name              = var.rg_name
  location             = var.location
  storage_account_name = var.storage_account_name
}

module "acr" {
  source   = "./modules/acr"
  rg_name  = module.rg.rg_name
  location = var.location
  acr_name = var.acr_name
}

module "network" {
  source      = "./modules/network"
  rg_name     = module.rg.rg_name
  location    = var.location
  vnet_name   = var.vnet_name
  subnet_name = var.subnet_name
}
