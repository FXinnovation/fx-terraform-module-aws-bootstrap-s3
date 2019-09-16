resource "aws_kms_key" "terraform_bucket" {
  description             = "This key is used to encrypt terraform state file bucket."
  deletion_window_in_days = 10

  tags = {
    Name        = "KMS key for S3 bucket for terraform state files."
    Environment = "Root"
    Terraform   = "true"
  }
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket_prefix = var.s3_bucket_prefix
  acl           = "private"
  region        = var.s3_region

  tags = {
    Name        = "Terraform state files bucket."
    Environment = "Root"
    Terraform   = "true"
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.terraform_bucket.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "aws_iam_role" "terraform_bucket" {
  name        = "${upper(var.vendor_prefix)}S3TerraformRole"
  description = "Role for Terraform state files bucket."

  tags = {
    Name        = "Role for Terraform state files bucket."
    Environment = "Root"
    Terraform   = "true"
  }

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY

}

data "aws_iam_policy_document" "terraform_bucket" {
  statement {
    sid = "1"

    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.terraform_bucket.arn,
    ]
  }
}

resource "aws_iam_policy" "terraform_bucket" {
  name   = "${upper(var.vendor_prefix)}S3TerraformFullAccess"
  path   = "/"
  policy = data.aws_iam_policy_document.terraform_bucket.json
}

resource "aws_iam_role_policy_attachment" "terraform_bucket" {
  role       = aws_iam_role.terraform_bucket.name
  policy_arn = aws_iam_policy.terraform_bucket.arn
}

