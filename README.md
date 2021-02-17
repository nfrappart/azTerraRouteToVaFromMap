
# Route module
This module create as many route as provided in map variable named Destination
It will :
- create n routes
- associates thoses routes with a route table

## Usage Example :

```hcl
module "nva-udr" {
  source = "github.com/nfrappart/azTerraRouteToVaFromMap"
  Destination = {
    "Spoke1-web-subnet" = "10.1.0.0/24",
    "Spoke1-app-subnet" = "10.1.1.0/24",
    "Spoke1-db-subnet" = "10.1.2.0/24",
  }
  RgName    = azurerm_resource_group.demo-rg.name
  RouteTableName = azurerm_route_table.demo-rt.name
  NextHopIP = data.azurerm_network_interface.my-nva-nic1.private_ip_address #use a string with an IP address or an output from another resource/data source
}
```
