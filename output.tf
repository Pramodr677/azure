output "resource_group_id" {
  value = module.resourcegroup.resource_group_id
}

output "resource_group_name" {
  value = module.resourcegroup.resource_group_name
}

output "vnet_id" {
  value = module.Vnet.*.vnet_id
}

output "subnet_id" {
  value = module.Subnet.*.subnet_id
}
output "NSG_ID" {
  value = module.NSG.*.NSG_id
}

output "public_ip_address_id" {
  value = module.loadbalancer.PublicIPAddress
}

output "public_ip_address_ip" {
  value = module.loadbalancer.PublicIPAddress1
}
output "virtualnet_name" {
  value = module.Vnet.virtualnet_name
}

output "private_routetable_id" {
  value = module.route_table.private_routetable_id
}
output "remote_virtual_network_id2" {
  value = module.Vnet.remote_virtual_network_id2
}
output "address_poolid" {
  value = module.loadbalancer.address_poolid
}
output "remote_virtual_network_id" {
  value = module.Vnet.remote_virtual_network_id
}

output "remote_virtual_network_id3" {
  value = module.Vnet.remote_virtual_network_id3
}
output "remote_virtual_network_id4" {
  value = module.Vnet.remote_virtual_network_id4
}
