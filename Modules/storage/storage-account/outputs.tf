output name {
  value       = var.ENABLED == "true" ? azurerm_storage_account.st[0].name : null
}
output id {
  value       = var.ENABLED == "true" ? azurerm_storage_account.st[0].id : null
  sensitive   = true
}
output access_key {
  value       = var.ENABLED == "true" ? azurerm_storage_account.st[0].primary_access_key : null
  sensitive   = true
}

output connection_string {
  value       = var.ENABLED == "true" ? azurerm_storage_account.st[0].primary_connection_string : null
  sensitive   = true
}