variable "s3_bucket_names" {
  type        = list
  description = "Name of state bucket."
}

variable "ddb_table_names" {
  description = "Name of state lock table."
}

variable "region" {
  description = "Region of deployment."
}
