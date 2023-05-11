/************************************************************ Common Variables ************************************************************/

variable "RG_LOCATION" {
  type        = string
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}

variable "RG_NAME" {
  type        = string
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription."
}

variable "TAGS" {
  type        = map
  description = "Generic tags"
}

variable "ENABLED" {
  type = string
}

/************************************************************ Storage Account ************************************************************/

variable "NAME" {
  type = string 
  description = "(Required) Specifies the name of the storage account. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "TIER" {
  type = string 
  description = " (Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
}

variable "REPLICATION_TYPE" {
    type = string 
      description = " (Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa."
}

variable "HTTPS_ONLY" {
  type = bool
  description = " (Optional) Boolean flag which forces HTTPS if enabled."
}

variable "TLS_VERSION" {
  type = string
  description = " (Optional) The minimum supported TLS version for the storage account."
}

variable "DEFAULT_ACTION"{
  type = string
  description = "(Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow."
}

variable "IAM_ROLES" {
  type = list(object({
    OBJECT_ID = string
    ROLE      = string
  }))
  description = "Optional variable. Only required if any users/SPNs/managed identities need access to the Container"
  default     = []
}