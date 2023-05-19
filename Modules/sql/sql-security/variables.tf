variable "RESOURCE_GROUP_NAME" {
  type        = string
  description = "(Required) The name of the resource group in which to create the resource."
}

variable "SERVER_NAME" {
  type        = string
  description = "(Required) The name of the Microsoft SQL Server."
}

variable "SERVER_SECURITY_ALERT_POLICY_ID" {
  type = string
  description = " (Required) The id of the security alert policy of the MS SQL Server."
}

variable "STORAGE_CONTAINER_PATH" {
  type = string
  description = "(Required) A blob storage container path to hold the scan results."
}

variable "STORAGE_ACCOUNT_ACCESS_KEY" {
    type = string
  description = "(Optional) Specifies the identifier key of the storage account for vulnerability assessment scan results. If storage_container_sas_key isn't specified, storage_account_access_key is required."
}
  
# variable "STORAGE_CONTAINER_SAS_KEY" {
#   type = string
#   description = "(Optional) A shared access signature (SAS Key) that has write access to the blob container. If storage_account_access_key isn't specified, storage_container_sas_key is required."
# }