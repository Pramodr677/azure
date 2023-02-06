resource "azurerm_resource_group" "otresourcegroup" {
  name    = var.rg_name                                         
  location = var.rg_location                               
  tags = var.my_tags
}
