
output "private_routetable_id" {
  value = "${formatlist("%v",azurerm_route_table.ot_private.*.id)}"
}

output "public_routetable_id" {
  value = azurerm_route_table.ot_public.*.id
}