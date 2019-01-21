# Standard S3 reposiory for terraform

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
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_access\_key | Credentials: AWS access key. | string | `"PLEASE SET THE AWS ACCESS KEY"` | no |
| aws\_secret\_key | Credentials: AWS secret key. Pass this a variable, never write password in the code. | string | `"PLEASE SET THE AWS SECRET KEY. DO NOT WRITE YOUR SECRET IN THIS FILE."` | no |
| region | Region. | string | `"us-east-1"` | no |

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
