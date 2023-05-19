module "sql-firewall1" {
  source = "../modules/sql/sql-firewall"

  ENABLED        = contains(local.prd_envs, lower(var.ENVIRONMENT)) ? false : true
  SERVER_ID      = module.sql_server_region1.id
  FIREWALL_RULES = local.SQL_FIREWALL_RULES

}