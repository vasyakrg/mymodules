provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

module "aws-domain" {
  source        = "./module/aws-domain"
  dns_zone_name = "aits.life"
  record_name   = "test1"
  records       = ["${module.aws-instance.instance_public_ip}"]
}

module "aws-instance" {
  source       = "./module/aws-instance"
  ssh_key_name = "ssh-deployer"
  tags = {
    Name = "test-1"
  }
}
