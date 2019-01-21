##############
# S3 tf bucket
##############

variable "vendor_prefix" {
  description = "Initials of the company which the project is bootstrapped."
  default     = "vendor"
}

variable "s3_bucket_prefix" {
  description = "Prefix of the bucket that will contain terraform state files."
  default     = "vendor-tfstate"
}

variable "s3_region" {
  description = "Region where to create the S3 bucket."
  default     = "us-east-1"
}
