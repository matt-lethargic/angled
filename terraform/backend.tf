terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.81.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "angled"
    storage_account_name = "angledsa"
    container_name       = "terraformstate"
    key                  = "angled.tfstate"
  }
}

provider "azurerm" {
  features {}
}