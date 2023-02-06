resource "azurerm_subnet" "subnet" {
  count               = length(var.address_prefixes)  
  name                 = "ot_subnet-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = element( var.virtual_network_name, count.index)
  address_prefixes       = [ element(var.address_prefixes, count.index) ]
 
}
# resource "azurerm_subnet_network_security_group_association" "pvtnsg-rule" {
#   count = length( var.NSG_id)
#     subnet_id                  = element( var.subnet_id, count.index)
#   network_security_group_id = element(var.NSG_id, count.index )
# }

