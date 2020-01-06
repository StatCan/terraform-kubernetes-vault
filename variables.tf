variable "helm_service_account" {}

variable "helm_namespace" {}

variable "helm_release_name" {
  default = "vault"
}

variable "helm_chart" {
  default = "vault"
}

variable "helm_repository" {}

variable "chart_version" {}

variable "dependencies" {
  type = "list"
}

variable "values" {
  default = ""
  type    = "string"
}
