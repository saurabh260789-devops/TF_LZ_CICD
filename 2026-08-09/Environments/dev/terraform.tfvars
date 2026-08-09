location = "eastus"
rg_name = "rg-dev-example"
vnet_name = "vnet-dev-example"
vnet_address_space = ["10.1.0.0/16"]
subnet_name = "subnet-dev"
subnet_prefixes = ["10.1.1.0/24"]
bastion_subnet_name = "AzureBastionSubnet"
bastion_subnet_prefixes = ["10.1.2.0/27"]
admin_username = "azureuser"
admin_password = "ChangeMe123!"
tags = { environment = "dev" }
