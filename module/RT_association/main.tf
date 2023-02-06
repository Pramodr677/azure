
resource "azurerm_subnet_route_table_association" "private_RT_association" {
  count = length(var.private_subnetid)
  subnet_id      = element( var.private_subnetid, count.index)
  route_table_id = element(var.private_routetable_id ,count.index)
}

resource "azurerm_subnet_route_table_association" "public1_RT_association" {
  count = length(var.public_subnet_id)
  subnet_id      = element( var.public_subnet_id, count.index)
  route_table_id = element( var.public_routetable_id ,count.index)

}
