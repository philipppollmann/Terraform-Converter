terraform {
  required_version = "v1.3.10"

  backend "azurerm" {
    resource_group_name = "tfconv-tfstate"
    storage_account_name = "tfconvtfstate"
    container_name = "tfstate-container"
    key = "tfstate"
  }

  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.64.0"
    }
  }
}

provider "azurerm" {
    features {
      key_vault {
        purge_soft_delete_on_destroy = true
      }
    }
}