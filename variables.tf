variable "location" {
  description = "Azure region for resources"
  default     = "East US"
}

variable "rg_name" {
  description = "Resource Group Name"
  default     = "training-rg"
}

variable "storage_account_name" {
  description = "Storage Account Name (must be unique globally)"
  default     = "tftrainstorage1234"
}

variable "acr_name" {
  description = "Azure Container Registry Name"
  default     = "tftrainingacr123"
}

variable "vnet_name" {
  description = "Virtual Network Name"
  default     = "training-vnet"
}

variable "subnet_name" {
  description = "Subnet Name"
  default     = "training-subnet"
}
