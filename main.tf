resource "azurerm_resource_group" "api-g" {
  name     = "api-g"
  location = "West US"
}

resource "azurerm_api_management" "apim-mgt" {
  name                = "apim-mgt"
  location            = azurerm_resource_group.api-g.location
  resource_group_name = azurerm_resource_group.api-g.name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  sku_name            = var.sku
}

resource "azurerm_api_management_api" "apim-mgt" {
  name                = "apim-mgt"
  resource_group_name = azurerm_resource_group.api-g.name
  api_management_name = azurerm_api_management.apim-mgt.name
  revision            = var.revision
  display_name        = var.display_name
  path                = var.path
  protocols           = var.protocols
  service_url         = var.service_url

  import {
    content_format = "swagger-link-json"
    content_value  = "http://conferenceapi.azurewebsites.net/?format=json"
  }
}