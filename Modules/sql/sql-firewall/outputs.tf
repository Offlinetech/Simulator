output id {
  value = var.ENABLED == "true" ? azurerm_mssql_firewall_rule.mssql_firewall[0].id : null
  sensitive   = true
}