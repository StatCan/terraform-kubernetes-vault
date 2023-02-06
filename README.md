# Terraform Kubernetes Vault

## Introduction

This module deploys and configures Vault inside a Kubernetes Cluster.

## Security Controls

The following security controls can be met through configuration of this template:

* TBD

## Dependencies

* None

## Optional (depending on options configured):

* None

## Usage

```terraform
module "helm_vault" {
  source = "git::https://github.com/canada-ca-terraform-modules/terraform-kubernetes-vault?ref=v3.0.1"

  chart_version = "0.0.5"
  depends_on = [
    module.namespace_cloudops,
  ]

  helm_namespace  = module.namespace_cloudops.name
  helm_repository = "stable"

  values = <<EOF

EOF
```

## Variables Values

| Name                     | Type   | Required | Value                                                         |
| ------------------------ | ------ | -------- | ------------------------------------------------------------- |
| chart_version            | string | yes      | Version of the Helm Chart                                     |
| helm_namespace           | string | yes      | The namespace Helm will install the chart under               |
| helm_repository          | string | yes      | The repository where the Helm chart is stored                 |
| helm_repository_username | string | no       | The username of the repository where the Helm chart is stored |
| helm_repository_password | string | no       | The password of the repository where the Helm chart is stored |
| helm_release_name        | string | no       | The release name (default: vault)                             |
| helm_chart               | string | no       | The name of the chart to use (default: vault)                 |
| values                   | string | no       | Values to be passed to the Helm Chart                         |

## History

| Date     | Release    | Change                                              |
| -------- | ---------- | --------------------------------------------------- |
| 20190729 | 20190729.1 | Improvements to documentation and formatting        |
| 20190909 | 20190909.1 | 1st release                                         |
| 20200620 | v2.0.0     | Module now modified for Helm 3                      |
| 20201013 | v2.0.1     | Add the ability to specify a username and password. |
| 20201020 | v2.0.2     | Remove a dependency that didn't exist.              |
| 20210114 | v2.0.3     | Remove interpolation syntax                         |
| 20210824 | v3.0.0     | Update module for Terraform v0.13                   |
| 20230203 | v3.0.1     | Specify sensitive variables                         |
