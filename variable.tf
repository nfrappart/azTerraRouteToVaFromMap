####################################################
# This module creates route for azure route tables #
####################################################

variable "rgName" {
  type = string
}
variable "routeTableName" {
  type = string
}
variable "destination" {
  type = map
}
variable "nextHopIP" {
  type = string
}
