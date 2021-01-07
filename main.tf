terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.41.0"
    }
    random = {
      version = "2.2"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "rg-tfc-guide"
  location = var.az_location
}

resource "random_pet" "table_name" {
  length = ""
}

resource "azurerm_storage_account" "stor" {
  name = "stor${random_pet.table_name.id}"
  resource_group_name = azurerm_resource_group.rg.name
  location = var.az_location
  account_tier = "Standard"
  account_replication_type = "LRS"
}