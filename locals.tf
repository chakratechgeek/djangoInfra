# locals.tf

locals {
  # Common values that can be reused across the configuration

  # Example: AWS region
  aws_region   = "ap-south-1"
  bucket_name  = "temp1985"
  bucket_key   = "django/statefile.tfstate"
  need_encrypt = true



}
