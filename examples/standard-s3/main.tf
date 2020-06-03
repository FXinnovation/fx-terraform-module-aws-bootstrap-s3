provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "random_string" "this" {
  length  = 8
  upper   = false
  special = false
}

module "s3_bootstrap" {
  source = "../../"

  s3_region        = var.region
  s3_bucket_prefix = random_string.this.result
  vendor_prefix    = random_string.this.result
}
