variable "prefix" {
  description = "Prefijo para nombres de recursos"
  type        = string
  default     = "nodeapp"
}
variable "location" { type = string default = "eastus" }
variable "resource_group_name" { type = string default = "rg-node-mysql" }
variable "admin_username" { type = string default = "azureuser" }
variable "ssh_public_key" { type = string }
variable "my_ip" { type = string } # p.ej. "203.0.113.45/32"
variable "app_name" { type = string default = "mi-app-node-123" }

# Variables opcionales para tamaños
variable "vm_size" { type = string default = "Standard_B1ms" }
variable "app_service_sku_tier" { type = string default = "Standard" }
variable "app_service_sku_size" { type = string default = "S1" }
