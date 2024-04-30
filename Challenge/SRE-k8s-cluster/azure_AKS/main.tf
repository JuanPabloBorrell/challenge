terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-TFSTATE"
    storage_account_name = "srepassgen"
    container_name       = "srepassgen"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "provider" {
  source = "./modules/provider"
}

module "rg" {
  source = "./modules/rg"
}

module "k8s" {
  source = "./modules/k8s"
  depends_on = [
    module.rg
  ]

}
