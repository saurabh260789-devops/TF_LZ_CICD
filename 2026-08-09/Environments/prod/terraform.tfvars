location = "eastus2"
rg_name = "gemini"
vnet_name = "vnet-gemini"
vnet_address_space = ["10.2.0.0/16"]
subnet_name = "subnet-gemini"
subnet_prefixes = ["10.2.1.0/24"]
admin_username = "azureuser"
admin_password = "ChangeMeProd123!"
tags = { environment = "prod" }
