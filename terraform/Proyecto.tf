provider "azurerm" {
  features {}

  subscription_id = "fed8cb91-8862-48fa-bbb2-2205be02afd3"
}

resource "azurerm_resource_group" "rg" {
  name     = "docentes-rg"
  location = "East US"  # Asegúrate de que esta región esté disponible en tu suscripción
}

resource "azurerm_service_plan" "asp" {
  name                = "docentes-appserviceplan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Windows"
  sku_name            = "F1"  # Nivel gratuito, compatible con suscripciones para estudiantes
}

resource "azurerm_windows_web_app" "app" {
  name                = "docentes-appservice"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = false  # Desactivado porque el plan F1 no soporta always_on
    ftps_state = "FtpsOnly"  # Configura el estado de FTPS

    # Especifica los documentos predeterminados, si es necesario
    default_documents = ["default.aspx", "index.html"]

    # Aquí se pueden agregar otras configuraciones necesarias
  }

  https_only = true

  tags = {
    environment = "production"
  }
}

resource "azurerm_mssql_server" "sql" {
  name                         = "docentes-sqlserver"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "Password123!"

  tags = {
    environment = "production"
  }
}

resource "azurerm_mssql_database" "db" {
  name          = "docentes-db"
  server_id     = azurerm_mssql_server.sql.id
  sku_name      = "Free"  # Nivel gratuito, compatible con suscripciones para estudiantes
}

# resource "azurerm_firewall" "firewall" {
#   name                = "docentes-firewall"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   sku_name            = "AZFW_VNet"
#   sku_tier            = "Standard"
# }