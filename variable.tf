####################################################
# This module creates route for azure route tables #
####################################################

variable "RgName" {
  type = string
}
variable "RouteTableName" {
  type = string
}
variable "Destination" {
  type = map
}
variable "NextHopIP" {
  type = string
}
