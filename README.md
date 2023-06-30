Sets up a custom rest integration using CX as Code and Terraform remote modules

## Usage

```hcl
module "integration" {
    source = "git::https://github.com/GenesysCloudDevOps/custom-rest-integration-module.git?ref=v1.0.0"

    integration_name           = "Custom Rest Integration"
    integration_creds_username = "<username>"
    integration_creds_password = "<password>"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a>[terraform](https://www.terraform.io/) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_genesyscloud"></a> [genesyscloud](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest) | >= 1.0|

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The integration name. | `string` | yes |
| <a name="integration_creds_username"></a> [integration_creds_username](#integration\_\creds\_\username)  | The username used for authentication. | `string` | yes |
| <a name="integration_creds_password"></a> [integration_creds_password](#integration\_\creds\_\password)  | The password used for authentication. | `string` | yes |

## Outputs

| Name | Description | Type | 
|------|-------------|------|
| <a name="integration_id"></a> [integration_id](#integration\_\id)  | The ID of the integration. | `string` |
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The name of the integration. | `string` | 