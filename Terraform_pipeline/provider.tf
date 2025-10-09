terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  required_version = ">= 1.3.0" # Optional: Ensure you’re using a compatible Terraform version
}

provider "azurerm" {
  features {}

  subscription_id = AZURE_CREDENTIALS.subscription_id
  tenant_id       = AZURE_CREDENTIALS.tenant_id
  client_id       = AZURE_CREDENTIALS.client_id
  client_secret   = AZURE_CREDENTIALS.client_secret

}