
 variable "rg_location" {
   type = any
 }
 variable "rg_name" {
   type = any
 }
variable "my_tags" {
  default     = {}  
  type = any
}
variable "address_space_vnet" {
  type = any
}
variable "virtualnetwork_name" {
  type = any
}
 variable "rglocation" {
   type = any
 }

variable "address_prefixes" {
 type = any 
}
# variable "ports" {
#    type = any
#    default = [22,80,443]
#  }
variable "allocation_method" {
  type = any
}
variable "vm_name" {
  type = any
}


variable "public_address_prefixes" {
  type = any
}
variable "nsg_name" {
  type = any
}

variable "vm_type" {
  type = any
}
variable "security_rules" {
  type = list
  default = []
}
variable "security_outrules" {
  type = list
  default = []
}

variable "publicvm_name" {
  type = any
  description = "(optional) describe your variable"
}
variable "publicnsg_name" {
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
variable "number_of_instances" {
  type = any
}
variable "threshold_greaterthan" {
  type = string
  description = "(optional) describe your variable"
}
variable "metric_name" {
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
variable "backend_poolname" {
  type = any
}
variable "prob_port" {
  type = any
}
variable "prob_protocol" {
  type = any
}
variable "probname" {
  type = any
}
variable "ip_configuration_name" {
  type = any
}
variable "lbrule_name" {
  type = any
}
variable "front_port" {
  type = any
}
variable "back_port" {
  type = any
}
variable "loadbalancer_name" {
  type = any
}
variable "lbrule_protocol" {
  type = any
}