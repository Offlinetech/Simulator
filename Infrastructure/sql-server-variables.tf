variable "SQL_VERSION" {
  type = string
}

variable "SQL_ADMINISTRATOR_LOGIN" {
  type = string
}

variable "SQL_ADMINISTRATOR_LOGIN_PASSWORD" {
  type = string
}

variable "SQL_PUBNET_ACCESS_ENABLED" {
  type = string
}

# variable "PEP_SUBNET_ID_SQL_SERVER_REGION1" {
#   type        = string
#   description = "(Required) The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created."
#   default     = ""
# }
# variable "PEP_STATIC_PRIVATE_IP_ADRESS_SQL_SERVER_REGION1" {
#   type        = string
#   description = "(Required) Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created. "
#   default     = ""
# }

# variable "PEP_PRIVATE_DNS_ZONE_IDS_SQL_SERVER_REGION1" {
#   type        = list(string)
#   description = "(Required) Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
# }

# variable "PEP_SUBNET_ID_SQL_SERVER_REGION2" {
#   type        = string
#   description = "(Required) The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created."
#   default     = ""
# }
# variable "PEP_STATIC_PRIVATE_IP_ADRESS_SQL_SERVER_REGION2" {
#   type        = string
#   description = "(Required) Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created. "
#   default     = ""
# }

# variable "PEP_PRIVATE_DNS_ZONE_IDS_SQL_SERVER_REGION2" {
#   type        = list(string)
#   description = "(Required) Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
# }
