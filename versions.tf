terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 1.0.0"
    }
  }
  required_version = ">= 0.13"
}
