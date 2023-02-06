output "virtualnet_name" {
  value = "${formatlist("%s",azurerm_virtual_network.otservice.*.name)}"
}



output "vnet_id" {
  value = azurerm_virtual_network.otservice.*.id
}

output "vnet_name" {
  value =  "${formatlist("%s",azurerm_virtual_network.otservice.*.name)}"
}



output "virtualnet_name1" {
   value =  "${formatlist("%s",azurerm_virtual_network.otservice.*.name)}"
}
output "virtualnet_name2" {
   value =  "${formatlist("%s",azurerm_virtual_network.otservice.*.name)}"
}
output "virtualnet_name3" {
    value =  "${formatlist("%s",azurerm_virtual_network.otservice.*.name)}"
}
output "virtualnet_name4" {
  value = "${formatlist("%s",azurerm_virtual_network.otservice[3].name)}"
}


output "remote_virtual_network_id" {
  value =  "${formatlist("%s",azurerm_virtual_network.otservice[0].id)}"
}

output "vnet_names" {
  value =  "${slice(formatlist("%s",azurerm_virtual_network.otservice.*.name),1,length(formatlist("%s",azurerm_virtual_network.otservice.*.name)))}"
}

output "remote_virtual_network_id2" {
    value = "${formatlist("%s",azurerm_virtual_network.otservice[1].id)}"
}

output "remote_virtual_network_id3" {
 value = "${formatlist("%s",azurerm_virtual_network.otservice[2].id)}"
}
output "remote_virtual_network_id4" {
 value = "${formatlist("%s",azurerm_virtual_network.otservice[3].id)}"
}

