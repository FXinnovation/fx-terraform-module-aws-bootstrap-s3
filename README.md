# Terraform module: bootstrap S3

Bootstrap terraform AWS S3 repository.

This module should be used in a client-specific bootstrap terraform module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| s3\_bucket\_prefix | Prefix of the bucket that will contain terraform state files. | string | `"vendor-tfstate"` | no |
| s3\_region | Regsion where to create the S3 bucket. | string | `"us-east-1"` | no |
| vendor\_prefix | Initials of the company which the project is bootstrapped. | string | `"vendor"` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_policy\_arn | The policy ARN to access the terraform state files bucket. |
| iam\_policy\_id | The policy id to access the terraform state files bucket. |
| iam\_role\_arn | The role ARN to access the terraform state files bucket. |
| iam\_role\_id | The role id to access the terraform state files bucket. |
| iam\_role\_unique\_id | The stable and unique string identifying the role to access the terraform state files bucket. |
| kms\_arn | The key ARN for the S3 bucket for terraform state files. |
| kms\_id | The key id for the S3 bucket for terraform state files. |
| s3\_arn | The ARN of the S3 bucket for terraform state files. |
| s3\_bucket\_domain\_name | The domain name of S3 bucket for terraform state files. |
| s3\_id | The ID of the S3 bucket for terraform state files. |
| s3\_region | The region of S3 bucket for terraform state files. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
