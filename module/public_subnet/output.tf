

output "public_subnet_id" {
  value = "${formatlist("%s",azurerm_subnet.public_subnet.*.id)}"
}
