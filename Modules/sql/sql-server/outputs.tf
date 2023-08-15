output name {
  value = var.ENABLED == "true" ? azurerm_mssql_server.sql_server[0].name : null
}

output id {
  value = var.ENABLED == "true" ? azurerm_mssql_server.sql_server[0].id : null
  sensitive   = true
}

output fully_qualified_domain_name {
  value = var.ENABLED == "true" ? azurerm_mssql_server.sql_server[0].fully_qualified_domain_name : null
}

# output "private_endpoint_ip" {
#   value = var.enable_private_endpoint ? azurerm_private_endpoint.private_ep.0.private_service_connection.0.private_ip_address : null
# }

