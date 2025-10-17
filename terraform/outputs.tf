output "vm_public_ip" {
  value = azurerm_public_ip.mysql_public_ip.ip_address
}
output "app_hostname" {
  value = azurerm_app_service.app.default_site_hostname
}
