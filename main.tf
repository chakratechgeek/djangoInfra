#adding this comment
terraform {
  backend "s3" {
    bucket = local.bucket_name
    #key     = "django/statefile.tfstate"
    key     = local.bucket_key
    encrypt = local.need_encrypt
    region  = local.aws_region
  }
}

module "ec2_for_django" {
  source = "git::https://github.com/chakratechgeek/djangoAwsInfra-BP.git//ec2"

  vpc_id           = var.vpc_id
  subnet_id        = var.subnet_id
  ec_ami           = var.ec_ami
  instance_type    = var.instance_type
  key_name         = var.key_name
  pub_ip_associate = var.pub_ip_associate

}
