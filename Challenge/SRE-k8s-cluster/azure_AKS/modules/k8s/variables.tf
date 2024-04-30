variable "k8s" {
  type    = string
  default = "sre_k8s_cluster"
}

variable "rg_name" {
  type    = string
  default = "sre_k8s_cluster"
}

variable "location" {
  type    = string
  default = "Germany West Central"
}

variable "dns_prefix" {
  type    = string
  default = "cluster-1"
}

variable "node_pool_name" {
  type    = string
  default = "nodepool01"
}
