variable "resource_group_name" {
  type = any
}
variable "rglocation" {
   type = any
 }
 variable "publicnsg_name" {
   type = any
 }

#  variable "ports" {
#    type = any
#    default = [22, 80, 443]
#  }
 variable "source_address_prefix" {
   type = any
 }

 ######
#  variable "ports_public" {
#    type = any
#    default = [22]
#  }
#  variable "publicrglocation" {
#    type = any
#  }
#  variable "additional_ports" {
#    type = any
#  }
#  variable "additaional_ports_public" {
#    type =any
#  }
variable "nsg_name" {
  type = any
}
variable "NSG_name" {
  type = any
}



#####################
variable "security_rules" {
  type = list
  default = []
}

variable "security_outrules" {
  type = list
  default = []
}
