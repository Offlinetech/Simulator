variable "ENABLED" {
	type = bool
}

variable "SQLDB_FAILOVER_NAME" {
	type = string
}

variable "SQLDB_FAILOVER_PRIMARY_SERVER_ID" {
  type = string
}

variable "SQLDB_FAILOVER_DATABASE_ID" {
  type = list
  description = "List of database IDs"
}

variable "SQLDB_FAILOVER_SECONDARY_SERVER_IDS" {
  type = list
  description = "List of secondary SQL servers"
}

variable "SQLDB_FAILOVER_RW_EP_POLICY" {
  type = string
  description = "The failover policy of the read-write endpoint for the failover group"	
}

variable "SQLDB_FAILOVER_RW_EP_GRACE" {
  type = number
  description = "The grace period in minutes, before failover with data loss is attempted for the read-write endpoint"
}

variable "TAGS" {
  type        = map
}