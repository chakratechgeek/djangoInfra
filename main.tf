module "ec2_for_django" {
  source = "git::https://github.com/chakratechgeek/djangoAwsInfra-BP.git//ec2"

  bucket_name      = var.bucket_name
  bucket_key       = var.bucket_key
  vpc_id           = var.vpc_id
  subnet_id        = var.subnet_id
  ec_ami           = var.ec_ami
  instance_type    = var.instance_type
  key_name         = var.key_name
  need_encrypt     = var.need_encrypt
  pub_ip_associate = var.pub_ip_associate

}
