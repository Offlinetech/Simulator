module "sql_db_region1" {
  source               = "../modules/sql/sql-db"
  ENABLED              = var.ENABLED
  SQLDB_NAME           = upper("${var.PROJECT}back-${var.ENVIRONMENT}-${local.regions_acronym[0].rg01}-sqldb01")
  SQL_SERVER_ID        = module.sql_server_region1.id
  SQLDB_SKU_NAME       = var.SQLDB_SKU_NAME
  SQLDB_MAX_SIZE_GB    = var.SQLDB_MAX_SIZE_GB
  SQLDB_ZONE_REDUNDANT = var.SQLDB_ZONE_REDUNDANT
  TAGS                 = merge(local.tags, { "hidden-title" = "${var.PROJECT} - ${var.ENVIRONMENT}" })
}

module "sql_db_region2" {
  source  = "../modules/sql/sql-db"
  ENABLED = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? true : false
  
  SQLDB_NAME               = upper("${var.PROJECT}back-${var.ENVIRONMENT}-${local.regions_acronym[0].rg02}-sqldb01")
  SQL_SERVER_ID            = module.sql_server_region2.id
  SQLDB_SKU_NAME           = var.SQLDB_SKU_NAME
  SQLDB_ZONE_REDUNDANT     = var.SQLDB_ZONE_REDUNDANT
  MAX_SIZE_ENABLED         = "false"
  SQLDB_IS_SECONDARY       = true
  SQLDB_SOURCE_DATABASE_ID = module.sql_db_region1.id
  SQLDB_MAX_SIZE_GB        = null
  TAGS                     = merge(local.tags, { "hidden-title" = "${var.PROJECT} - ${var.ENVIRONMENT}" })
}