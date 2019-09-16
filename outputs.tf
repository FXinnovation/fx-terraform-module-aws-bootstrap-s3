output "s3_id" {
  description = "The ID of the S3 bucket for terraform state files."
  value       = aws_s3_bucket.terraform_bucket.id
}

output "s3_arn" {
  description = "The ARN of the S3 bucket for terraform state files."
  value       = aws_s3_bucket.terraform_bucket.arn
}

output "s3_bucket_domain_name" {
  description = "The domain name of S3 bucket for terraform state files."
  value       = aws_s3_bucket.terraform_bucket.bucket_domain_name
}

output "s3_region" {
  description = "The region of S3 bucket for terraform state files."
  value       = aws_s3_bucket.terraform_bucket.region
}

output "kms_id" {
  description = "The key id for the S3 bucket for terraform state files."
  value       = aws_kms_key.terraform_bucket.key_id
}

output "kms_arn" {
  description = "The key ARN for the S3 bucket for terraform state files."
  value       = aws_kms_key.terraform_bucket.arn
}

output "iam_policy_id" {
  description = "The policy id to access the terraform state files bucket."
  value       = aws_iam_policy.terraform_bucket.id
}

output "iam_policy_arn" {
  description = "The policy ARN to access the terraform state files bucket."
  value       = aws_iam_policy.terraform_bucket.arn
}

output "iam_role_id" {
  description = "The role id to access the terraform state files bucket."
  value       = aws_iam_role.terraform_bucket.id
}

output "iam_role_arn" {
  description = "The role ARN to access the terraform state files bucket."
  value       = aws_iam_role.terraform_bucket.arn
}

output "iam_role_unique_id" {
  description = "The stable and unique string identifying the role to access the terraform state files bucket."
  value       = aws_iam_role.terraform_bucket.unique_id
}

