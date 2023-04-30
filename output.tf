output "bucket_name" {
  description = "The S3 bucket name for Terraform backend."
  value       = module.s3-bucket.bucket_name
}

output "bucket_kms_alias_key" {
  description = "The KMS key used to encrypt S3 bucket for Terraform backend."
  value       = module.s3-bucket.kms_key_alias
}

output "dynamodb_table_id" {
  description = "The DynamoDB table id for Terraform backend."
  value       = module.dynamodb-table.table_id
}
