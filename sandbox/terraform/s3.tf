data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

module "s3-trustsoft-org" {
    source      = "git::https://gitlab.lukapo.com/terraform/aws/module.s3?ref=1.0.2"
    bucket_name = "created-from-aft-customizations-1231231245"
    user_name   = "created-from-aft-customizations-1231231245"
}