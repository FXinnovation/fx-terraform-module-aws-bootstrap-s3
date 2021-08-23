# Terraform module: bootstrap S3

Bootstrap terraform AWS S3 repository.

This module should be used in a client-specific bootstrap terraform module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 2.34 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 2.34 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_key.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_iam_policy_document.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_s3_bucket_prefix"></a> [s3\_bucket\_prefix](#input\_s3\_bucket\_prefix) | Prefix of the bucket that will contain terraform state files. | `string` | `"vendor-tfstate"` | no |
| <a name="input_s3_region"></a> [s3\_region](#input\_s3\_region) | Region where to create the S3 bucket. | `string` | `"us-east-1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additionnal tags to add to all AWS resources. | `map` | `{}` | no |
| <a name="input_vendor_prefix"></a> [vendor\_prefix](#input\_vendor\_prefix) | Initials of the company which the project is bootstrapped. | `string` | `"vendor"` | no |

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
