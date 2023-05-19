output "id" {
  value = var.ENABLED == "true" ? azurerm_mssql_failover_group.sql_failover_group[0].id : null
}