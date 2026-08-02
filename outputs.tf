output "nsg_names" {
  value = [
    for nsg in azurerm_network_security_group.nsg :
    nsg.name
  ]
}