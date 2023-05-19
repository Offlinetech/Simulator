resource "azurerm_mssql_server_security_alert_policy" "sql_server_alert_policy" {
  resource_group_name = var.RESOURCE_GROUP_NAME
  server_name         = var.SERVER_NAME
  state               = "Enabled"
}

resource "azurerm_mssql_server_vulnerability_assessment" "sql_server_vulnerability_assessment" {
  server_security_alert_policy_id = var.SERVER_SECURITY_ALERT_POLICY_ID
  storage_container_path          = var.STORAGE_CONTAINER_PATH
  storage_account_access_key      = var.STORAGE_ACCOUNT_ACCESS_KEY
# storage_container_sas_key       = var.STORAGE_CONTAINER_SAS_KEY

  recurring_scans {
    enabled                   = false
    email_subscription_admins = false
    emails = [
      "email@example1.com",
      "email@example2.com"
    ]
  }
}