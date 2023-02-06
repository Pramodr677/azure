terraform {
  backend "azurerm"{
        resource_group_name  = "ot-test"
        storage_account_name = "terraformbatch16"
        container_name       = "terraform"
        key                  = "ot/terraform.tfstate"
    
    #access_key = "value"
  }
}