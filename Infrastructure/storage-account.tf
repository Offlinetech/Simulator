module "storage_account_region1" {
  source           = "../modules/storage/storage-account"
  ENABLED          = var.ENABLED
  NAME             = lower("sta${var.PROJECT}app${var.ENVIRONMENT}01")
  RG_NAME          = module.resource_group_region1.name
  RG_LOCATION      = module.resource_group_region1.location
  TIER             = var.ST_TIER
  REPLICATION_TYPE = var.ST_REPLICATION_TYPE
  HTTPS_ONLY = var.ST_HTTPS_ONLY
  TLS_VERSION = var.ST_TLS_VERSION
  TAGS             = merge(local.tags, { "hidden-title" = "Function storage files" })
  DEFAULT_ACTION   = var.ST_DEFAULT_ACTION
}

# module "private_endpoint_storage_account_blob_region1" {
#   source = "../modules/networking/private-endpoint"

#   ENABLED                             = var.PRIVATE_NETWORK_ENABLED
#   PRIVATE_ENDPOINT_NAME               = upper("${var.PROJECT}back-blob-${var.ENVIRONMENT}-${local.regions_acronym[0].rg01}-st01-pep01")
#   LOCATION                            = module.resource_group_region1.location
#   RESOURCE_GROUP_NAME                 = module.resource_group_region1.name
#   SUBNET_ID                           = module.subnet_storage_all_regions[0].id
#   PRIVATE_SERVICE_CONNECTION_NAME     = "pep-st-${var.PROJECT}${var.ENVIRONMENT}${module.resource_group_region1.location}-nic"
#   PRIVATE_CONNECTION_RESOURCE_ID      = module.storage_account_region1.id
#   PRIVATE_CONNECTION_SUBRESOURCE_NAME = "blob"
#   #STATIC_PRIVATE_IP_ADDRESS             = var.PEP_STATIC_PRIVATE_IP_ADRESS_STORAGE_ACCOUNT_REGION1
#   STATIC_PRIVATE_IP_ADDRESS = null
#   PRIVATE_DNS_ZONE_IDS      = [module.private_dns_zone_storage_account_blob_all_regions.id]
# }

# module "private_endpoint_storage_account_file_region1" {
#   source = "../modules/networking/private-endpoint"

#   ENABLED                             = var.PRIVATE_NETWORK_ENABLED
#   PRIVATE_ENDPOINT_NAME               = upper("${var.PROJECT}back-file-${var.ENVIRONMENT}-${local.regions_acronym[0].rg01}-st01-pep01")
#   LOCATION                            = module.resource_group_region1.location
#   RESOURCE_GROUP_NAME                 = module.resource_group_region1.name
#   SUBNET_ID                           = module.subnet_storage_all_regions[0].id
#   PRIVATE_SERVICE_CONNECTION_NAME     = "pep-st-${var.PROJECT}${var.ENVIRONMENT}${module.resource_group_region1.location}-nic"
#   PRIVATE_CONNECTION_RESOURCE_ID      = module.storage_account_region1.id
#   PRIVATE_CONNECTION_SUBRESOURCE_NAME = "file"
#   #STATIC_PRIVATE_IP_ADDRESS             = var.PEP_STATIC_PRIVATE_IP_ADRESS_STORAGE_ACCOUNT_REGION1
#   STATIC_PRIVATE_IP_ADDRESS = null
#   PRIVATE_DNS_ZONE_IDS      = [module.private_dns_zone_storage_account_file_all_regions.id]
# }

module "storage_account_region2" {
  source  = "../modules/storage/storage-account"
  ENABLED = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? true : false
  
  NAME             = lower("sta${var.PROJECT}app${var.ENVIRONMENT}02")
  RG_NAME          = module.resource_group_region2.name
  RG_LOCATION      = module.resource_group_region2.location
  TIER             = var.ST_TIER
  REPLICATION_TYPE = var.ST_REPLICATION_TYPE
  HTTPS_ONLY = var.ST_HTTPS_ONLY
  TLS_VERSION = var.ST_TLS_VERSION
  TAGS             = merge(local.tags, { "hidden-title" = "Function storage files" })
  DEFAULT_ACTION   = var.ST_DEFAULT_ACTION
}

# module "private_endpoint_storage_account_blob_region2" {
#   source = "../modules/networking/private-endpoint"

#   ENABLED                             = contains(local.prd_envs, lower(var.ENVIRONMENT)) && var.PRIVATE_NETWORK_ENABLED ? true : false
#   PRIVATE_ENDPOINT_NAME               = upper("${var.PROJECT}back-blob-${var.ENVIRONMENT}-${local.regions_acronym[0].rg02}-st02-pep01")
#   LOCATION                            = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.location : null
#   RESOURCE_GROUP_NAME                 = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.name : null
#   SUBNET_ID                           = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.subnet_storage_all_regions[1].id : null
#   PRIVATE_SERVICE_CONNECTION_NAME     = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? "pep-st-${var.PROJECT}${var.ENVIRONMENT}${module.resource_group_region2.location}-nic" : null
#   PRIVATE_CONNECTION_RESOURCE_ID      = module.storage_account_region2.id
#   PRIVATE_CONNECTION_SUBRESOURCE_NAME = "blob"
#   STATIC_PRIVATE_IP_ADDRESS           = null
#   PRIVATE_DNS_ZONE_IDS                = var.PEP_PRIVATE_DNS_ZONE_IDS_STORAGE_ACCOUNT_REGION2
# }

# module "private_endpoint_storage_account_file_region2" {
#   source = "../modules/networking/private-endpoint"

#   ENABLED                             = contains(local.prd_envs, lower(var.ENVIRONMENT)) && var.PRIVATE_NETWORK_ENABLED ? true : false
#   PRIVATE_ENDPOINT_NAME               = upper("${var.PROJECT}back-file-${var.ENVIRONMENT}-${local.regions_acronym[0].rg02}-st02-pep01")
#   LOCATION                            = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.location : null
#   RESOURCE_GROUP_NAME                 = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.resource_group_region2.name : null
#   SUBNET_ID                           = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? module.subnet_storage_all_regions[1].id : null
#   PRIVATE_SERVICE_CONNECTION_NAME     = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? "pep-st-${var.PROJECT}${var.ENVIRONMENT}${module.resource_group_region2.location}-nic" : null
#   PRIVATE_CONNECTION_RESOURCE_ID      = module.storage_account_region2.id
#   PRIVATE_CONNECTION_SUBRESOURCE_NAME = "file"
#   #STATIC_PRIVATE_IP_ADDRESS             = var.PEP_STATIC_PRIVATE_IP_ADRESS_STORAGE_ACCOUNT_REGION2
#   STATIC_PRIVATE_IP_ADDRESS = null
#   PRIVATE_DNS_ZONE_IDS      = [module.private_dns_zone_storage_account_file_all_regions.id]
# }
