# module "alert_policy_sql_server_region1" {
#   source = "../modules/sql/sql-security"

# RESOURCE_GROUP_NAME = module.resource_group_region1.name
# SERVER_NAME         = module.sql_server_region1.name
# }

# module "vulnerability_assessment_sql_server_region1" {
#   source = "../modules/sql-security"

#   SERVER_SECURITY_ALERT_POLICY_ID = module.alert_policy_sql_server_region1.id
#   STORAGE_CONTAINER_PATH = module.private_endpoint_storage_account_blob_region1
#   STORAGE_ACCOUNT_ACCESS_KEY = module.storage_account_region1.access_key
# }


# module "alert_policy_sql_server_region2" {
#   source = "../modules/sql/sql-security"

# RESOURCE_GROUP_NAME = module.resource_group_region2.name
# NAME                = module.sql_server_region2.name
# }

# module "vulnerability_assessment_sql_server_region2" {
#   source = "../../../tf-modules/sql/sql-security"

#   SERVER_SECURITY_ALERT_POLICY_ID = module.alert_policy_sql_server_region2.id
#   STORAGE_CONTAINER_PATH = module.private_endpoint_storage_account_blob_region2
#   STORAGE_ACCOUNT_ACCESS_KEY = module.storage_account_region2.access_key
# }