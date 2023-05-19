output id {
  value = var.ENABLED == "true" ? azurerm_mssql_database.sql_database[0].id : null
  sensitive   = true
}

output name {
  value = var.ENABLED == "true" ? azurerm_mssql_database.sql_database[0].name : null
  sensitive   = true
}
