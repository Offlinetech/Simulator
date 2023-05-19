variable "TAGS" {
  type        = map
}

variable "SQLDB_NAME" {
  type        = string
}

variable "SQL_SERVER_ID" {
  type        = string
}

variable "SQLDB_SKU_NAME" {
  type        = string
}

variable "SQLDB_MAX_SIZE_GB" {
  type        = string
  default = null
}

variable "SQLDB_ZONE_REDUNDANT" {
  type        = string
}

variable "SQLDB_IS_SECONDARY" {
  type = bool
  default = false
}

variable "SQLDB_SOURCE_DATABASE_ID" {
  type = string
  default = ""
}

variable "ENABLED" {
  type = string
}

variable "MAX_SIZE_ENABLED" {
  type = string
  default = "true"
}