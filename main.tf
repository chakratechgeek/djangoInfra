
#adding this comment
terraform {
  backend "s3" {
    bucket = "temp1983"
    key    = "django/statefile.tfstate"
    #key     = local.bucket_key
    encrypt = true
    region  = "ap-south-1"
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
  create_instance  = var.create_instance
  spot_create_instance = var.spot_create_instance

}
