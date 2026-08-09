terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-sipahi"
    storage_account_name = "stgsipahi"
    container_name       = "tfstate"
    key                  = "vnetfstate"
  }
}

provider "azurerm" {
  features {}

}