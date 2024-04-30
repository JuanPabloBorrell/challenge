resource "azurerm_kubernetes_cluster" "k8s_cluster_test" {
  name                = var.k8s
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name                = var.node_pool_name
    node_count          = 1
    vm_size             = "Standard_B2s"
    os_disk_size_gb     = 30
    enable_auto_scaling = true
    max_count           = 1
    min_count           = 1

  }

  identity {
    type = "SystemAssigned"
  }
}
