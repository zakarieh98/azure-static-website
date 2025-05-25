provider "azurerm" {
  features {}
  subscription_id = "subscription_id"
}
resource "azurerm_resource_group" "main" {
  name     = "tf-website-rg"
  location = "East US"
}
resource "azurerm_storage_account" "main" {
  name                     = "tfwebsiteaccount123"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document     = "index.html"
    error_404_document = "404.html"
  }
}
resource "azurerm_storage_blob" "index_html" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.main.name
  storage_container_name = "$web"
  type                   = "Block"
  source                 = "index.html"
  content_type           = "text/html"
}
