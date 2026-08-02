resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_network_security_group" "nsg" {
  count = length(var.nsg_names)

  name = "nsg-${var.nsg_names[count.index]}"

  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}