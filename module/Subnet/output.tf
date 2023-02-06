output "subnet_id" {
  value =  "${formatlist("%v",azurerm_subnet.subnet.*.id)}"
}

