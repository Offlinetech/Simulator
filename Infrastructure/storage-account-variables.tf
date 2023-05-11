variable "ST_NAME" {
  type        = string
  description = "(Required) Specifies the name of the storage account. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "ST_TIER" {
  type        = string
  description = " (Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
}

variable "ST_REPLICATION_TYPE" {
  type        = string
  description = " (Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa."
}

variable "ST_HTTPS_ONLY" {
  type = bool
  description = " (Optional) Boolean flag which forces HTTPS if enabled."
}

variable "ST_TLS_VERSION" {
  type = string
  description = " (Optional) The minimum supported TLS version for the storage account."
}

variable "ST_DEFAULT_ACTION" {
  type        = string
  description = " (Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow."
}

# variable "PEP_STATIC_PRIVATE_IP_ADRESS_STORAGE_ACCOUNT_REGION1" {
#   type    = string
#   default = null
# }

# variable "PEP_PRIVATE_DNS_ZONE_IDS_STORAGE_ACCOUNT_REGION1" {
#   type = list(string)
# }

# variable "PEP_STATIC_PRIVATE_IP_ADRESS_STORAGE_ACCOUNT_REGION2" {
#   type    = string
#   default = null
# }

# variable "PEP_PRIVATE_DNS_ZONE_IDS_STORAGE_ACCOUNT_REGION2" {
#   type = list(string)
# }