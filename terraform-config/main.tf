#resource "azurerm_resource_group" "demo-rg11" {
# count    = 2
#name     = "mit${count.index}"
#location = var.eastus


#}

resource "azurerm_resource_group" "demo-rg" {
  
  name     = "nokia"
  location = "eastus"
}

resource "azurerm_storage_account" "mit-stg" {
  name = "mithileshNokia111"
  resource_group_name = azurerm_resource_group.demo-rg.name
  location = "eastus"
  account_replication_type = "LRS"
  account_tier = "Standard"
  
}
