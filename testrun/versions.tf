provider "azurerm" {
  features {}
  #subscription_id = var.subscription_id
  #client_id       = var.terraform_client_id
  #client_secret   = var.terraform_client_secret
  #tenant_id       = var.tenant_id    
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.64.0"
    }
  }
  required_version = ">= 0.13"
}