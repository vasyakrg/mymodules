provider "vscale" {
  token = "${var.token}"
}

module "vscale-instance" {
  source              = "./module/vscale-instance"
  scalet_name         = "dev1"
  scalet_image_index  = "0"
  scalet_default_user = "root"
}

module "vscale-domain" {
  source         = "./module/vscale-domain"
  domain_name    = "aits.life"
  record_type    = "A"
  record_name    = "${module.vscale-instance.scalet_name}.${module.vscale-domain.domain_name}"
  record_content = "${module.vscale-instance.scalet_ip-address}"
  record_ttl     = 86400
}
