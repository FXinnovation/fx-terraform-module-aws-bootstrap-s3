provider "aws" {
  region     = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

module "s3_bootstrap" {
  source = "../../"

  s3_region        = "${var.region}"
  s3_bucket_prefix = "tftest-bucket-"
  vendor_prefix    = "tftest"
}
