# Terraform module to create a S3 Bucket on AWS.
module "s3-bucket" {

  source  = "evners/s3-bucket/aws"
  version = "~> 1.0"

  bucket_name = var.bucket_name

}

# Terraform module to create a Dynamodb table on AWS.
module "dynamodb-table" {

  source  = "evners/dynamodb-table/aws"
  version = "~> 1.0"

  attributes = [
    {
      type = "S"
      name = var.hash_key
    }
  ]

  hash_key   = var.hash_key
  table_name = var.table_name

}
