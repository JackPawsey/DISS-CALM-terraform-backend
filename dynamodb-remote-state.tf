resource "aws_dynamodb_table" "terraform_locks" {
  count        = length(var.ddb_table_names)
  name         = var.ddb_table_names[count.index]
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name       = "LockID"
    type       = "S"
  }
  tags         = merge({Name = "${var.ddb_table_names[count.index]}"}, local.common_tags)
}
