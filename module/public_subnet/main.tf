
resource "azurerm_subnet" "public_subnet" {
  count               = length(var.public_address_prefixes)
  name                 = "Subnet-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = element( var.virtualnet_name, count.index)
  address_prefixes       = [ element(var.public_address_prefixes, count.index) ]
}

# resource "azurerm_subnet_network_security_group_association" "nsg-rule" {
#   count = length( var.public_NSG_id)
#     subnet_id                  = element( var.public_subnet_id, count.index)
#   network_security_group_id = element(var.public_NSG_id, count.index )
# }