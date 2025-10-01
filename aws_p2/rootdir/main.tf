provider "aws" {
  region = var.region
  //profile = "default"
}

module "ec2_instance" {
  source = "../ec2_instance"
  ami = var.ami
  instance_type   = var.instance_type
  prefix          = var.prefix
  my_ip           = var.my_ip
  region          = var.region
  vpc_id          = var.vpc_id
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}
