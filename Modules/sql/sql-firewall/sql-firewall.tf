resource "azurerm_mssql_firewall_rule" "mssql_firewall" {
  count            = var.ENABLED == "true" ? length(var.FIREWALL_RULES) : 0 
  name             = var.FIREWALL_RULES[count.index].NAME
  server_id        = var.SERVER_ID
  start_ip_address = var.FIREWALL_RULES[count.index].START_IP_ADRESS
  end_ip_address   = var.FIREWALL_RULES[count.index].END_IP_ADRESS
}