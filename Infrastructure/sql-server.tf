module "sql_server_region1" {
  source = "../modules/sql/sql-server"

  ENABLED                       = var.ENABLED
  NAME                          = lower("unfcccsql${var.PROJECT}back${var.ENVIRONMENT}${local.regions_acronym[0].rg01}01")
  RESOURCE_GROUP_NAME           = module.resource_group_region1.name
  LOCATION                      = module.resource_group_region1.location
  SQL_VERSION                   = var.SQL_VERSION
  ADMINISTRATOR_LOGIN           = var.SQL_ADMINISTRATOR_LOGIN
  ADMINISTRATOR_LOGIN_PASSWORD  = var.SQL_ADMINISTRATOR_LOGIN_PASSWORD
  PUBLIC_NETWORK_ACCESS_ENABLED = var.SQL_PUBNET_ACCESS_ENABLED
  TAGS                          = merge(local.tags, { "hidden-title" = "Geo Main Database" })
}

# module "private_endpoint_sql_server_region1" {
#   source = "../modules/networking/private-endpoint"

#   ENABLED                             = var.PRIVATE_NETWORK_ENABLED
#   PRIVATE_ENDPOINT_NAME               = upper("${var.PROJECT}back-${var.ENVIRONMENT}-${local.regions_acronym[0].rg01}-sql01-pep01")
#   LOCATION                            = module.resource_group_region1.location
#   RESOURCE_GROUP_NAME                 = module.resource_group_region1.name
#   SUBNET_ID                           = module.subnet_sql_all_regions[0].id
#   PRIVATE_SERVICE_CONNECTION_NAME     = "pep-sql-${var.PROJECT}-${var.ENVIRONMENT}${module.resource_group_region1.location}001-nic"
#   PRIVATE_CONNECTION_RESOURCE_ID      = module.sql_server_region1.id
#   PRIVATE_CONNECTION_SUBRESOURCE_NAME = "sqlServer"
#   STATIC_PRIVATE_IP_ADDRESS           = var.PEP_STATIC_PRIVATE_IP_ADRESS_STATIC_SITE_LOGIN_PAGE
#   PRIVATE_DNS_ZONE_IDS                = [module.private_dns_zone_database_all_regions.id]
# }


module "sql_server_region2" {
  source = "../modules/sql/sql-server"

  ENABLED = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? true : false
  
  NAME                          = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? lower("unfcccsql${var.PROJECT}back${var.ENVIRONMENT}${local.regions_acronym[0].rg02}02") : null
  RESOURCE_GROUP_NAME           = module.resource_group_region2.name
  LOCATION                      = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.location : null
  SQL_VERSION                   = var.SQL_VERSION
  ADMINISTRATOR_LOGIN           = var.SQL_ADMINISTRATOR_LOGIN
  ADMINISTRATOR_LOGIN_PASSWORD  = var.SQL_ADMINISTRATOR_LOGIN_PASSWORD
  PUBLIC_NETWORK_ACCESS_ENABLED = var.SQL_PUBNET_ACCESS_ENABLED
  TAGS                          = merge(local.tags, { "hidden-title" = "Geo Replication 1" })
}

# module "private_endpoint_sql_server_region2" {
#   source = "../modules/networking/private-endpoint"

#   ENABLED                             = contains(local.prd_envs, lower(var.ENVIRONMENT)) && var.PRIVATE_NETWORK_ENABLED ? true : false
#   PRIVATE_ENDPOINT_NAME               = upper("${var.PROJECT}back-${var.ENVIRONMENT}-${local.regions_acronym[0].rg02}-sql02-pep01")
#   LOCATION                            = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.location : null
#   RESOURCE_GROUP_NAME                 = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.name : null
#   SUBNET_ID                           = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.subnet_sql_all_regions[1].id : null
#   PRIVATE_SERVICE_CONNECTION_NAME     = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? "pep-sql-${var.PROJECT}-${var.ENVIRONMENT}${module.resource_group_region2.location}002-nic" : null
#   PRIVATE_CONNECTION_RESOURCE_ID      = module.sql_server_region2.id
#   PRIVATE_CONNECTION_SUBRESOURCE_NAME = "sqlServer"
#   STATIC_PRIVATE_IP_ADDRESS           = var.PEP_STATIC_PRIVATE_IP_ADRESS_STATIC_SITE_LOGIN_PAGE
#   PRIVATE_DNS_ZONE_IDS                = [module.private_dns_zone_database_all_regions.id]
# }

