resource "azurerm_resource_group" "rg-test" {
  for_each= var.rgs

  name= each.value.name
  location = each.value.location
}