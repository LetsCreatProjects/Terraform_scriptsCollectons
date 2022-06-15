#---Will print image id that you can put inside resource "azurerm_linux_virtual_machine" instead block  source_image_reference { you can see it in file "create_vm_from_gallery_image"
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


data "azurerm_shared_image_version" "ServerImage" {
  name                = "0.0.1" #var.weight_app_image_version_name
  image_name          = "linux"
  gallery_name        = "azure_gallery_v0" # var.weight_app_image_gallery_name
  resource_group_name = "rg_imave_v0"
}

output "imageData" {
    value = data.azurerm_shared_image_version.ServerImage.id 
}
