variable "region" {
  description = "The AWS default region where you want to create resources."
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "Name for S3 bucket."
  type        = string
  default     = "terraform-state"
}

variable "table_name" {
  description = "Name for DynamoDB table."
  type        = string
  default     = "terraform-state"
}

variable "hash_key" {
  description = " Attribute to use as the hash (partition) key. Must also be defined as an attribute."
  type        = string
  default     = "LockID"
}