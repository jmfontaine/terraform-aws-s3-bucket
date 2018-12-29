resource "aws_s3_bucket" "bucket" {
  acl    = "${var.acl}"
  bucket = "${var.name}"
  region = "${var.region}"
  tags   = "${var.tags}"

  // Buckets are always encrypted since it improves security and
  // there are no charges for using default encryption for S3 buckets.
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = "${var.versioning_enabled}"
  }
}
