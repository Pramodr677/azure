output "PublicIPAddress" {
 value = azurerm_public_ip.publicIP.id
}

output "PublicIPAddress1" {
 value = azurerm_public_ip.publicIP.ip_address
}
output "load_banalcer_id" {
    value = azurerm_lb.loadbalancer.id
}
output "address_poolid" {
  value = "${formatlist("%s", azurerm_lb_backend_address_pool.otservice_bpepool.*.id)}"
}
output "lb_address_poolid" {
  value = azurerm_lb_backend_address_pool.otservice_bpepool.id
}
output "prob_id" {
  value = azurerm_lb_probe.otservice_lb_probe.id
}