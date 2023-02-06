module "resourcegroup" {
   source  = "./module/ResourceGroup"
   rg_location =  var.rg_location  
   rg_name =  var.rg_name 
   my_tags = var.my_tags
   #lock_level = var.lock_level  
  # prevent_delete = var.prevent_delete   
}

module "Vnet" {
   source  = "./module/Vnet"  
   address_space_vnet = var.address_space_vnet
   virtualnetwork_name = var.virtualnetwork_name
   resource_group_name = module.resourcegroup.resource_group_name
   my_tags = var.my_tags
   rglocation =  var.rglocation  
  
}


module "route_table" {
  source = "./module/Routetable"
  resource_group_name = module.resourcegroup.resource_group_name
  public_ip_vm = module.virtual_machine.public_ip_vm
  rglocation =  var.rglocation 
  address_space_vnet = var.address_space_vnet
}

module "routetable_association" {
  source = "./module/RT_association"
  public_subnet_id = module.PublicSubnet.public_subnet_id
  public_routetable_id = module.route_table.public_routetable_id
  private_subnetid = module.Subnet.subnet_id
  private_routetable_id = module.route_table.private_routetable_id
  
}

module "Subnet" {
  source = "./module/Subnet"
  address_prefixes = var.address_prefixes
  resource_group_name = module.resourcegroup.resource_group_name
  virtual_network_name = module.Vnet.vnet_name
}

module "PublicSubnet" {
  source = "./module/public_subnet"
  #public_address_prefixes = var.public_address_prefixes
  public_address_prefixes = var.public_address_prefixes
  resource_group_name = module.resourcegroup.resource_group_name
  virtualnet_name = module.Vnet.virtualnet_name
 # public_NSG_id = module.NSG.public_NSG_id
 # public_subnet_id1 = module.PublicSubnet.public_subnet_id1  
  
  
}



module "NSG" {
  source = "./module/NSG"
  nsg_name = var.nsg_name
  NSG_name = module.NSG.NSG_name
  security_rules = var.security_rules
  rglocation = var.rglocation
  security_outrules = var.security_outrules
  resource_group_name = module.resourcegroup.resource_group_name
  source_address_prefix = module.virtual_machine.public_ip_vm1
  publicnsg_name = var.publicnsg_name
}

module "loadbalancer" {
   source = "./module/loadbalancer"
   resource_group_name = module.resourcegroup.resource_group_name
   rg_location = var.rg_location
   backend_poolname = var.backend_poolname
   prob_port = var.prob_port
   prob_protocol = var.prob_protocol
   probname = var.probname
   probe_id = module.loadbalancer.prob_id
   lbrule_name = var.lbrule_name
   front_port = var.front_port
   back_port = var.back_port
   lbrule_protocol = var.lbrule_protocol
   lb_address_poolid = module.loadbalancer.lb_address_poolid
   loadbalancer_name = var.loadbalancer_name
   ip_configuration_name = var.ip_configuration_name
   allocation_method      = var.allocation_method 
   public_ip_address_id   = module.loadbalancer.PublicIPAddress
   load_banalcer_id = module.loadbalancer.load_banalcer_id
  

}

module "vnet_peering" {
  source = "./module/vnetpeering"
  resource_group_name = module.resourcegroup.resource_group_name
  virtualnet_name1 = module.Vnet.virtualnet_name1
  remote_virtual_network_id2 = module.Vnet.remote_virtual_network_id2
  remote_virtual_network_id3 = module.Vnet.remote_virtual_network_id3
  remote_virtual_network_id4 = module.Vnet.remote_virtual_network_id4
  virtualnet_name2 = module.Vnet.virtualnet_name2
  virtualnet_name3 = module.Vnet.virtualnet_name3
  remote_virtual_network_id = module.Vnet.remote_virtual_network_id
  vnet_names = module.Vnet.vnet_names
  
}

module "virtual_machine" {
  source = "./module/VirtualMachine"
   vm_type = var.vm_type
   vm_size = var.vm_size
   skuwindows = var.skuwindows
   skuubuntu = var.skuubuntu
  # #azurepassword = var.azurepassword
   azureuser = var.azureuser
  # sshkeys_path = var.sshkeys_path
   keydata_path = var.keydata_path
  azurekyvaulsecretname = var.azurekyvaulsecretname
   keyvaultid = var.keyvaultid
   resource_group_name = module.resourcegroup.resource_group_name
   rglocation = var.rglocation
  # subnet_id = module.Subnet.subnet_id
  # vm_name = var.vm_name
   public_subnet_id = module.PublicSubnet.public_subnet_id
   public_id_vm = module.virtual_machine.public_id_vm
  # NSG_id = module.NSG.NSG_id
  # natinter_id = module.virtual_machine.natinter_id
   public_NSG_id = module.NSG.public_NSG_id
   public_natinter_id = module.virtual_machine.public_natinter_id
   publicvm_name = var.publicvm_name
   
}


module "vmss" {
source = "./module/vmss"
skuubuntu = var.skuubuntu
keydata_path = var.keydata_path
vm_type = var.vm_type
vm_name = var.vm_name
resource_group_name = module.resourcegroup.resource_group_name
rglocation = var.rglocation
vm_size = var.vm_size
azureuser = var.azureuser
skuwindows = var.skuwindows
subnet_id = module.Subnet.subnet_id
NSG_id = module.NSG.NSG_id
azurekyvaulsecretname = var.azurekyvaulsecretname
keyvaultid = var.keyvaultid
vmss_id = module.vmss.vmss_id
vmss_id_ubuntu = module.vmss.vmss_id_ubuntu
number_of_instances = var.number_of_instances
metric_name = var.metric_name
threshold_greaterthan = var.threshold_greaterthan
directionrule1 = var.directionrule1
threshold_lessthan = var.threshold_lessthan
directionrule2 = var.directionrule2
changecount_value_decrease = var.changecount_value_decrease
changecount_value_increase = var.changecount_value_increase
address_poolid = module.loadbalancer.address_poolid
my_tags = var.my_tags

}