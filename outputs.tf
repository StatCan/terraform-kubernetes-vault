output "helm_namespace" {
  value = var.helm_namespace
}

output "release_revision" {
  value = helm_release.vault.metadata.0.revision
}
