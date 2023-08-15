resource "azurerm_mssql_server_security_alert_policy" "sql_server_alert_policy" {
  resource_group_name = var.RESOURCE_GROUP_NAME
  server_name         = var.SERVER_NAME
  state               = "Enabled"
}
