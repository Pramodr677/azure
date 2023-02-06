
resource "azurerm_virtual_network" "otservice" {  
  count               = length(var.address_space_vnet)
  name                = element(var.virtualnetwork_name, count.index)
  #"otservice-vnet-${count.index}"
  address_space       = [ element(var.address_space_vnet, count.index) ]
  location =  element(var.rglocation, count.index )  
  resource_group_name = var.resource_group_name
  tags = var.my_tags
 
 
}
