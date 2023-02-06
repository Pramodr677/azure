resource "azurerm_public_ip" "publicIP" {
  name                = "PublicIPForLB"
  location            = var.rg_location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
}

resource "azurerm_lb" "loadbalancer" {
  name                = var.loadbalancer_name  
  location            = var.rg_location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = var.ip_configuration_name 
    public_ip_address_id = var.public_ip_address_id
  }
}

resource "azurerm_lb_rule" "lb_rule" {
  name                           = var.lbrule_name
  #resource_group_name           = var.resource_group_name
  loadbalancer_id               = var.load_banalcer_id
  frontend_port                 = var.front_port
  backend_port                  = var.back_port
  protocol                      = var.lbrule_protocol
  frontend_ip_configuration_name = var.ip_configuration_name 
  backend_address_pool_ids      = [ var.lb_address_poolid ]
  probe_id                      = var.probe_id
}


resource "azurerm_lb_probe" "otservice_lb_probe" {
  loadbalancer_id     = var.load_banalcer_id
  name                = var.probname 
  protocol            = var.prob_protocol 
  request_path        = "/health"
  port                = var.prob_port 
}

resource "azurerm_lb_backend_address_pool" "otservice_bpepool" {
  loadbalancer_id     = var.load_banalcer_id
  name                = var.backend_poolname 
  

}