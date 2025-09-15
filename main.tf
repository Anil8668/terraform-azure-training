resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "storage_id" {
  value = azurerm_storage_account.storage.id
}

variable "storage_account_name" {}
variable "rg_name" {}
variable "location" {}
