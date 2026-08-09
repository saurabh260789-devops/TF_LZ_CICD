snets = {
  snet1 = {
    name           = "frontend-subnet"
    location       = "centralindia"
    rg_name        = "rg-sipahi1"
    vnet_name      = "vnet_sipahi"
    address_prefix = ["10.0.0.0/24"]

  }

  snet2 = {
    name           = "backend-subnet"
    location       = "centralindia"
    rg_name        = "rg-sipahi1"
    vnet_name      = "vnet_sipahi"
    address_prefix = ["10.0.1.0/24"]

  }
}