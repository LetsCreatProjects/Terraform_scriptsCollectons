terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.10.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
   features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG_name_in_Azure"
    storage_account_name = "sdfsfoiwesssdsrtnbklkds"
    container_name       = "sdfsfoiwesssdsrtnbklkds"
    key                  = "terraformv0.tfstate"
  }
}