resource "azurerm_mssql_server" "sqlserver" {
  name                         = "dbserver-${var.project}-${var.environment}"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.admin_sql_user
  administrator_login_password = var.admin_sql_password

  tags = var.tags

}

resource "azurerm_mssql_database" "pokequeuedb" {
  name      = "${var.project}db"
  server_id = azurerm_mssql_server.sqlserver.id
  sku_name  = "S0"

  tags = var.tags

}