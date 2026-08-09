vms = {
  vm1 = {
    rg_name         = "rg-sipahi1"
    location        = "centralindia"
    nic_name        = "frontend_vm1_nic"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "vnet_sipahi"
    nic_pip_name    = "frontend-pip"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_DC1ds_v3"
    admin_username  = "100rabhadmin"
    admin_password  = "100rabhadmin@123"
  }

  vm2 = {
    rg_name         = "rg-sipahi1"
    location        = "centralindia"
    nic_name        = "backend_vm1_nic"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "vnet_sipahi"
    nic_pip_name    = "backend-pip"
    vm_name         = "backend-vm"
    vm_size         = "Standard_DC1ds_v3"
    admin_username  = "100rabhadmin"
    admin_password  = "100rabhadmin@123"
  }
}
