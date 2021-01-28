resource "aws_s3_bucket" "terraform_state" {
  count               = length(var.s3_bucket_names)
  bucket              = var.s3_bucket_names[count.index]
  force_destroy       = true
  versioning {
    enabled           = true
  }
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags                = merge({Name = "${var.s3_bucket_names[count.index]}"}, local.common_tags)
}
