variable "vm_name" {
  type = any
}
variable "rglocation" {
  type = any
}
variable "subnet_id" {
  type = any
}
variable "resource_group_name" {
  type = any
}

# variable "public_subnet_id" {
#   type = any
# }
variable "vm_type" {
  type = any
}

# variable "public_id_vm" {
#   type = any
# }

variable "NSG_id" {
  type = any
}
# variable "natinter_id" {
#   type = any
# }
# variable "public_NSG_id" {
#   type = any
# }
# variable "public_natinter_id" {
#   type = any
# }
# variable "publicvm_name" {
#   type = any
# }
variable "vmss_id_ubuntu" {
  type = any
}
variable "vm_size" {
  type = any
}
variable "skuubuntu" {
  type = any
}
variable "skuwindows" {
  type = any
}
variable "azureuser" {
  type = any
}
# variable "azurepassword" {
#   type = any
# }
# variable "sshkeys_path" {
#   type = any
# }
variable "keydata_path" {
  type = any
}
variable "azurekyvaulsecretname" {
  type = any
}
variable "keyvaultid" {
  type = any
}
variable "vmss_id" {
  type = any
}
variable "number_of_instances" {
  type = any
}
variable "metric_name" {
  type = any
}
variable "threshold_greaterthan" {
  type = any
}
variable "directionrule1" {
  type = any
}
variable "threshold_lessthan" {
  type = any
}
variable "directionrule2" {
  type = any
}
variable "changecount_value_decrease" {
  type = any
}
variable "changecount_value_increase" {
 type = any 
}
variable "address_poolid" {
  type = any
}
variable "my_tags" {
  type = any
}