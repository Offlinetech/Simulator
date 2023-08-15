variable "RESOURCE_GROUP_NAME" {
  type        = string
  description = "(Required) The name of the resource group in which to create the resource."
}

variable "SERVER_NAME" {
  type        = string
  description = "(Required) The name of the Microsoft SQL Server."
}

variable "STATE" {
  type        = string
}