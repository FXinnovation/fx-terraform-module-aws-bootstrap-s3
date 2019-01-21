provider "aws" {
  region     = "${var.s3_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

module "s3_bootstrap" {
  source = "../../"

  s3_region = "eu-west-01"
  s3_bucket_prefix = "tftest-bucket-"
  vendor_prefix = "tftest"
}
