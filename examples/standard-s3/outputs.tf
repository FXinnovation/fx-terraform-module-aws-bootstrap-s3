output "s3_id" {
  description = "The ID of the S3 bucket for terraform state files."
  value       = module.s3_bootstrap.s3_id
}

output "s3_arn" {
  description = "The ARN of the S3 bucket for terraform state files."
  value       = module.s3_bootstrap.s3_arn
}

output "s3_bucket_domain_name" {
  description = "The domain name of S3 bucket for terraform state files."
  value       = module.s3_bootstrap.s3_bucket_domain_name
}

output "s3_region" {
  description = "The region of S3 bucket for terraform state files."
  value       = module.s3_bootstrap.s3_region
}

output "kms_id" {
  description = "The key id for the S3 bucket for terraform state files."
  value       = module.s3_bootstrap.kms_id
}

output "kms_arn" {
  description = "The key ARN for the S3 bucket for terraform state files."
  value       = module.s3_bootstrap.kms_arn
}

output "iam_policy_id" {
  description = "The policy id to access the terraform state files bucket."
  value       = module.s3_bootstrap.iam_policy_id
}

output "iam_policy_arn" {
  description = "The policy ARN to access the terraform state files bucket."
  value       = module.s3_bootstrap.iam_policy_arn
}

output "iam_role_id" {
  description = "The role id to access the terraform state files bucket."
  value       = module.s3_bootstrap.iam_role_id
}

output "iam_role_arn" {
  description = "The role ARN to access the terraform state files bucket."
  value       = module.s3_bootstrap.iam_role_arn
}

output "iam_role_unique_id" {
  description = "The stable and unique string identifying the role to access the terraform state files bucket."
  value       = module.s3_bootstrap.iam_role_unique_id
}
