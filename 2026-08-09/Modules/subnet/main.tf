resource "azurerm_subnet" "subnet" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
}

resource "azurerm_subnet_network_security_group_association" "assoc" {
  count                    = var.network_security_group_id == null ? 0 : 1
  subnet_id                = azurerm_subnet.subnet.id
  network_security_group_id = var.network_security_group_id
}
