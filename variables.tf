variable "helm_namespace" {}

variable "helm_release_name" {
  default = "vault"
}

variable "helm_chart" {
  default = "vault"
}

variable "helm_repository" {}
variable "helm_repository_password" {
  default = ""
}
variable "helm_repository_username" {
  default = ""
}

variable "chart_version" {}

variable "dependencies" {
  type = "list"
}

variable "values" {
  default = ""
  type    = "string"
}
