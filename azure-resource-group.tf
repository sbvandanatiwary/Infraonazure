# Configure the Azure provider
terraform {
  cloud {
    organization = "SabreADI"

    workspaces {
      name = "Infraonazure"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "myTFResourceGroupcc1"
  location = "westus2"
}

resource "azurerm_resource_group" "rg2" {
  name     = "myTFResourceGroupcc2"
  location = "westus2"
}

output "rg1" {
  description = "info of rg1"
  value       = azurerm_resource_group.rg1
  }
output "rg2" {
  description = "info of rg2"
  value  = azurerm_resource_group.rg2
  }




