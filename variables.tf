variable "helm_namespace" {}

variable "helm_release_name" {
  default = "vault"
}

variable "helm_chart" {
  default = "vault"
}

variable "helm_repository" {
  description = "The repository where the Helm chart is stored"
}
variable "helm_repository_password" {
  type        = string
  nullable    = false
  default     = ""
  description = "The password of the repository where the Helm chart is stored"
  sensitive   = true
}
variable "helm_repository_username" {
  type        = string
  nullable    = false
  default     = ""
  description = "The username of the repository where the Helm chart is stored"
  sensitive   = true
}

variable "chart_version" {}

variable "values" {
  default = ""
  type    = string
}
