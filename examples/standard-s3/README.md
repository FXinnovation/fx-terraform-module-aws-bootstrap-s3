# Standard S3 repository for terraform

Configuration in this directory creates set of S3 resources to be used for terraform’s state files.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_bootstrap"></a> [s3\_bootstrap](#module\_s3\_bootstrap) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Credentials: AWS access key. | `string` | `"PLEASE SET THE AWS ACCESS KEY"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region. | `string` | `"us-east-1"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Credentials: AWS secret key. Pass this a variable, never write password in the code. | `string` | `"PLEASE SET THE AWS SECRET KEY. DO NOT WRITE YOUR SECRET IN THIS FILE."` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_policy_arn"></a> [iam\_policy\_arn](#output\_iam\_policy\_arn) | The policy ARN to access the terraform state files bucket. |
| <a name="output_iam_policy_id"></a> [iam\_policy\_id](#output\_iam\_policy\_id) | The policy id to access the terraform state files bucket. |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | The role ARN to access the terraform state files bucket. |
| <a name="output_iam_role_id"></a> [iam\_role\_id](#output\_iam\_role\_id) | The role id to access the terraform state files bucket. |
| <a name="output_iam_role_unique_id"></a> [iam\_role\_unique\_id](#output\_iam\_role\_unique\_id) | The stable and unique string identifying the role to access the terraform state files bucket. |
| <a name="output_kms_arn"></a> [kms\_arn](#output\_kms\_arn) | The key ARN for the S3 bucket for terraform state files. |
| <a name="output_kms_id"></a> [kms\_id](#output\_kms\_id) | The key id for the S3 bucket for terraform state files. |
| <a name="output_s3_arn"></a> [s3\_arn](#output\_s3\_arn) | The ARN of the S3 bucket for terraform state files. |
| <a name="output_s3_bucket_domain_name"></a> [s3\_bucket\_domain\_name](#output\_s3\_bucket\_domain\_name) | The domain name of S3 bucket for terraform state files. |
| <a name="output_s3_id"></a> [s3\_id](#output\_s3\_id) | The ID of the S3 bucket for terraform state files. |
| <a name="output_s3_region"></a> [s3\_region](#output\_s3\_region) | The region of S3 bucket for terraform state files. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
