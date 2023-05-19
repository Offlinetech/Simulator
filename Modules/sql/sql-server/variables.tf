variable "TAGS" {
  type        = map
}

variable "RESOURCE_GROUP_NAME" {
  type        = string
}

variable "LOCATION" {
  type        = string
}

variable "NAME" {
  type        = string
}

variable "SQL_VERSION" {
  type        = string
}

variable "ADMINISTRATOR_LOGIN" {
  type        = string
}

variable "ADMINISTRATOR_LOGIN_PASSWORD" {
  type        = string
}

variable "PUBLIC_NETWORK_ACCESS_ENABLED"{
  type = string
}

variable "ENABLED" {
  type = string
}

variable "FIREWALL_RULES" {
    type = list(object({
        NAME      = string
        START_IP  = string
        END_IP    = string
    }))
    default     = []
}

# variable "enable_private_endpoint" {
# 	type = bool
# 	description = "Enable Private Endpoint for this resource."
# 	default = false
# }

# variable "subnet_id" {
# 	type = string
# 	description = "A subnet ID to attach the private endpoint."
# 	default = null
# }

# variable "ip_address" {
#   type = string
# 	description = "A private IP address for the private endpoint."
# 	default = "10.9.0.258"
# }
