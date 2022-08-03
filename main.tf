resource "azurerm_resource_group" "ravi" {
  name     = "demo"
  location = "eastus"
}

resource "azurerm_storage_account" "storageaccountname" {
  name                     = "storageaccountname"
  resource_group_name      = "demo"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}