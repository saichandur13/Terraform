# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
#Terraform Block of the code 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# block of the code skip_provider_registration = true This is only required when the User,\
#Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
#Azure Provider: Authenticating using a Service Principal with a Client Secret
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = var.client_secret
  tenant_id       = "10000000-0000-0000-0000-000000000000"
  subscription_id = "20000000-0000-0000-0000-000000000000"
}
