resource "azurerm_virtual_network_peering" "VnetPeering" {
  count = length(var.vnet_names)
  name                = "my-vnet-peering-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = element( var.vnet_names, count.index)
  #virtual_network_name = var.vnet_names
  remote_virtual_network_id = element( var.remote_virtual_network_id, count.index)
  allow_virtual_network_access = true
  allow_forwarded_traffic = true
  allow_gateway_transit = true
}



resource "azurerm_virtual_network_peering" "VnetPeering2" {
count = length(var.virtualnet_name1)
name = "virtual-peering-${count.index}"
resource_group_name = var.resource_group_name
virtual_network_name = element( var.virtualnet_name1, count.index)
remote_virtual_network_id = element( var.remote_virtual_network_id2, count.index)
allow_virtual_network_access = true
allow_forwarded_traffic = true
allow_gateway_transit = true
}

resource "azurerm_virtual_network_peering" "VnetPeering3" {
count = length(var.virtualnet_name2)
name = "virtual-peering2-${count.index}"
resource_group_name = var.resource_group_name
virtual_network_name = element( var.virtualnet_name2, count.index)
remote_virtual_network_id = element( var.remote_virtual_network_id3, count.index)
allow_virtual_network_access = true
allow_forwarded_traffic = true
allow_gateway_transit = true
}

resource "azurerm_virtual_network_peering" "VnetPeering4" {
count = length(var.virtualnet_name3)
name = "virtual-peering3-${count.index}"
resource_group_name = var.resource_group_name
virtual_network_name = element( var.virtualnet_name3, count.index)
remote_virtual_network_id = element( var.remote_virtual_network_id4, count.index)
allow_virtual_network_access = true
allow_forwarded_traffic = true
allow_gateway_transit = true
}

