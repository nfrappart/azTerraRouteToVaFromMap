####################################################
# This module creates route for azure route tables #
####################################################

resource "azurerm_route" "TerraRoute" {
  for_each            = var.Destination
  name                = "route-to-${each.key}"
  resource_group_name = var.RgName
  route_table_name    = var.RouteTableName
  address_prefix      = each.value
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = var.NextHopIP
}
