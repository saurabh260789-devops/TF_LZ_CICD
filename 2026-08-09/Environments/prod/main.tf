module "rg" {
  source   = "../../Modules/resource_group"
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source = "../../Modules/virtual_network"
  name = var.vnet_name
  location = var.location
  resource_group_name = module.rg.resource_group_name
  address_space = var.vnet_address_space
  tags = var.tags
}

module "nsg" {
  source = "../../Modules/network_security_group"
  name = "nsg-${var.rg_name}"
  location = var.location
  resource_group_name = module.rg.resource_group_name
  allow_ssh = false
}

module "subnet" {
  source = "../../Modules/subnet"
  name = var.subnet_name
  resource_group_name = module.rg.resource_group_name
  virtual_network_name = module.vnet.vnet_name
  address_prefixes = var.subnet_prefixes
  network_security_group_id = module.nsg.nsg_id
}

module "public_ip" {
  source = "../../Modules/public_ip"
  name = "pip-${var.rg_name}"
  location = var.location
  resource_group_name = module.rg.resource_group_name
}

module "bastion" {
  source = "../../Modules/bastion"
  name = "bastion-${var.rg_name}"
  location = var.location
  resource_group_name = module.rg.resource_group_name
  subnet_id = module.subnet.subnet_id
  public_ip_id = module.public_ip.public_ip_id
}

module "vm" {
  source = "../../Modules/virtual_machine"
  name = "vm-${var.rg_name}"
  location = var.location
  resource_group_name = module.rg.resource_group_name
  subnet_id = module.subnet.subnet_id
  public_ip_id = null
  admin_username = var.admin_username
  admin_password = var.admin_password
}
