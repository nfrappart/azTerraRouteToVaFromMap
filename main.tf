####################################################
# This module creates route for azure route tables #
####################################################

resource "azurerm_route" "TerraRoute" {
  for_each            = var.destination
  name                = "route-to-${each.key}"
  resource_group_name = var.rgName
  route_table_name    = var.routeTableName
  address_prefix      = each.value
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = var.nextHopIP
}
