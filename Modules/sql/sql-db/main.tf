resource "azurerm_mssql_database" "sql_database" {
  count                             = var.ENABLED == "true" ? 1 : 0 
  name                              = var.SQLDB_NAME
  server_id                         = var.SQL_SERVER_ID
  sku_name                          = var.SQLDB_SKU_NAME
  max_size_gb                       = var.SQLDB_MAX_SIZE_GB
  zone_redundant                    = var.SQLDB_ZONE_REDUNDANT
  create_mode 						= var.SQLDB_IS_SECONDARY ? "Secondary" : "Default"
  creation_source_database_id 		= var.SQLDB_IS_SECONDARY ? var.SQLDB_SOURCE_DATABASE_ID : null
  tags = var.TAGS
}
