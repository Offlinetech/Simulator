resource "azurerm_mssql_failover_group" "sql_failover_group" {
	count = var.ENABLED ? 1 : 0
  name      = var.SQLDB_FAILOVER_NAME
  server_id = var.SQLDB_FAILOVER_PRIMARY_SERVER_ID
  
  databases = var.SQLDB_FAILOVER_DATABASE_ID

  dynamic "partner_server" {
	for_each = var.SQLDB_FAILOVER_SECONDARY_SERVER_IDS
	content {
	  id = each.value
	}
  }

  read_write_endpoint_failover_policy {
    mode          = var.SQLDB_FAILOVER_RW_EP_POLICY
    grace_minutes = var.SQLDB_FAILOVER_RW_EP_GRACE
  }

  tags = var.TAGS
}