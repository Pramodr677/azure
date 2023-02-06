rg_name = "ot_rg_microservice"

rglocation =  ["Central India","North Europe","Australia East","West Europe" ] #, "East US 2" , "UK South"]
address_space_vnet = ["10.0.0.0/18" ,"10.2.0.0/18" ,"10.4.0.0/18" ,"10.6.0.0/18" ] #, "10.8.0.0/18" , "10.10.0.0/18"]

virtualnetwork_name = ["otservice-virtualnetwork-1" , "otservice-virtualnetwork-2" , "otservice-virtualnetwork-3" , "otservice-virtualnetwork-4" ] #, "otservice-virtualnetwork-5" , "otservice-virtualnetwork-6"]

my_tags = {
     Environment = "Prod"
     Owner       = "pramod"
     Team        = "DevOps"
}

public_address_prefixes = ["10.0.0.0/20" ] #,"10.2.0.0/20","10.4.0.0/20","10.6.0.0/20" , "10.8.0.0/20" , "10.10.0.0/20"]
address_prefixes = [ "10.0.16.0/20" ,"10.2.16.0/20" ,"10.4.16.0/20" ,"10.6.16.0/20" ] #, "10.8.16.0/20" , "10.10.16.0/20" , "10.0.32.0/20"  ,"10.2.32.0/20"  ,"10.4.32.0/20" ,"10.6.32.0/20"]

rg_location = "West Europe"

vm_size = "Standard_DS1_v2"
skuubuntu = "20_04-lts-gen2"
skuwindows = "2019-Datacenter"
azureuser = "azureuser"
#azurepassword = "AzurePassw0rd!"
#sshkeys_path = "/home/azureuser/.ssh/authorized_keys"
keydata_path = "/home/kc/AzureTerraform/mkey.pub"
azurekyvaulsecretname = "azurepassword"
keyvaultid = "/subscriptions/c70fbfa3-77ff-4651-ab13-05b836eef3f7/resourceGroups/ot-test/providers/Microsoft.KeyVault/vaults/otserviceterraform"

allocation_method = "Static"
vm_name = ["mysql" , "elasticsearch", "salary" , "attendance" , "employee","natgatway" , "frontend" , "webserver"]
publicvm_name = ["publicvm-1" ]
nsg_name = ["nsg-1" ,"nsg-2", "nsg-3", "nsg-4", "nsg-5" , "nsg-6" , "nsg-7" , "nsg-8"]
publicnsg_name = [ "publicnsg-1" ]
vm_type = "Ubuntu" #"Windows" 
number_of_instances = 1
metric_name = "Percentage CPU"
threshold_greaterthan = 75
directionrule1 = "Increase"
threshold_lessthan = 25
directionrule2 = "Decrease"
changecount_value_decrease = 1
changecount_value_increase = 1

security_rules = [ {    name = "mysqlrule" , priority = 100  , direction = "Inbound", access = "Allow", protocol = "Tcp", source_port_range = "*" , destination_port_range = "3306" , destination_address_prefix = "*" } , 
                    {    name = "elasticsearchrule" ,   priority = 101 , direction = "Inbound" , access = "Allow" , protocol = "Tcp", source_port_range = "*" , destination_port_range = "9200" , destination_address_prefix = "*" },  
                    {    name = "salary-rule"   , priority = 102  , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "8080" , destination_address_prefix = "*"  },
                    {    name = "attendance-rule" ,   priority = 103 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "8081" , destination_address_prefix = "*"  },
                    {    name = "employee-rule" ,   priority = 104 ,  direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "8083" , destination_address_prefix = "*"  },
                    {    name = "gatway-rule"  ,  priority = 105 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "8080" , destination_address_prefix = "*"  },                    
                    {    name = "react-rule"  ,  priority = 106 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "3000" , destination_address_prefix = "*"  },
                    {    name = "nginx-rule"  ,  priority = 107 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "80" , destination_address_prefix = "*"  },
                    {    name = "mysqlrule1" , priority = 108  , direction = "Inbound", access = "Allow", protocol = "Tcp", source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*" } ,  
                    {    name = "elasticsearchrule1" ,   priority = 109 , direction = "Inbound" , access = "Allow" , protocol = "Tcp", source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*" },  
                    {    name = "salary-rule1"   , priority = 110  , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*"  },
                    {    name = "attendance-rule1" ,   priority = 111 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*"  },
                    {    name = "employee-rule1" ,   priority = 112 ,  direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*"  },
                      {    name = "gatway-rule1"  ,  priority = 113 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*"  },
                    {    name = "react-rule1"  ,  priority = 114 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*"  },
                      {    name = "nginx-rule1"  ,  priority = 115 , direction = "Inbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "22" , destination_address_prefix = "*"  },
                   
                   
                    ]

security_outrules = [
                    {    name = "mysql-rule11"   , priority = 106 ,  direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  }, 
                    {    name = "elasticsearch-rule11"  ,  priority = 107 , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },  
                    {    name = "salary-rule11"  ,  priority = 108  , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },
                    {    name = "attendance-rule11"  ,  priority = 109 , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },
                    {    name = "employee-rule11"  ,  priority = 110  , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },
                     {    name = "gatway-rule11"  ,  priority = 111  , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },
                    {    name = "react-rule11"   , priority = 112  , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },
                     {    name = "nginx-rule11"  ,  priority = 113  , direction = "Outbound" , access = "Allow" , protocol = "Tcp" , source_port_range = "*" , destination_port_range = "*" , source_address_prefix = "*" , destination_address_prefix = "*"  },
                    ]



backend_poolname = "BackEndAddressPool"                  
prob_port = 80
prob_protocol = "Http"
probname = "http-probe"
ip_configuration_name = "PublicIPAddress"
lbrule_name = "lbrule_otmicroservice"
loadbalancer_name = "otservice_loadbalancer"
front_port = 80
back_port = 80
lbrule_protocol = "Tcp"