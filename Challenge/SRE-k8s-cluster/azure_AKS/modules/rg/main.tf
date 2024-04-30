resource "azurerm_resource_group" "k8s" {
  name     = var.rg_name
  location = var.location
}
