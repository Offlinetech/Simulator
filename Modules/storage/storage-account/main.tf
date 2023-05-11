resource "azurerm_storage_account" "st" {
  count                    = var.ENABLED == "true" ? 1 : 0 
  name                     = var.NAME
  resource_group_name      = var.RG_NAME
  location                 = var.RG_LOCATION
  account_tier             = var.TIER
  account_replication_type = var.REPLICATION_TYPE
  enable_https_traffic_only = var.HTTPS_ONLY
  min_tls_version = var.TLS_VERSION
  tags = var.TAGS
}