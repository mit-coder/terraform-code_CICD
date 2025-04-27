terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.20.0"
    }
  }
  backend "azurerm" {
    
    resource_group_name = "mit-rgg"
    storage_account_name = "mithilesh111"
    container_name = "mit-container"
    key = "terraform.tfstate"

    
  }
}
provider "azurerm" {
  features {}
  subscription_id = "e2b21bd3-23b3-43c2-a854-a8c3e3fad269"

}