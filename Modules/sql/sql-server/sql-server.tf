resource "azurerm_mssql_server" "sql_server" {
  count                         = var.ENABLED == "true" ? 1 : 0 
  name                          = var.NAME
  resource_group_name           = var.RESOURCE_GROUP_NAME
  location                      = var.LOCATION
  version                       = var.SQL_VERSION
  administrator_login           = var.ADMINISTRATOR_LOGIN
  administrator_login_password  = var.ADMINISTRATOR_LOGIN_PASSWORD
  public_network_access_enabled = var.PUBLIC_NETWORK_ACCESS_ENABLED
  tags                          = var.TAGS
}

# resource  "azurerm_private_endpoint" "private_ep" {
#   count               = var.enable_private_endpoint ? 1 : 0
#   name                = "pe-${azurerm_mssql_server.sql_server.0.name}"
#   resource_group_name = azurerm_mssql_server.sql_server.0.resource_group_name
# 	location            = azurerm_mssql_server.sql_server.0.location
#   subnet_id           = var.subnet_id

#   private_service_connection {
#     name                           = "pe-${azurerm_mssql_server.sql_server.0.name}-nic"
#     private_connection_resource_id = azurerm_mssql_server.sql_server.0.id
#     subresource_names              = ["sqlServer"]
#     is_manual_connection           = false
#   }

# 	dynamic ip_configuration {
# 		for_each = var.ip_address != null ? [1] : []
# 		content {
# 			name = "ip_address"
#     	private_ip_address = var.ip_address  
#     	subresource_name = "sqlServer"
# 		}
# 	}

# 	lifecycle {
# 		ignore_changes = [
# 			tags
# 		]
# 	}

# }