resource "vscale_domain" "domain" {
  name = "${var.domain_name}"
}

resource "vscale_record" "record" {
  domain  = "${vscale_domain.domain.id}"
  name    = "${var.record_name}"
  content = "${var.record_content}"
  type    = "${var.record_type}"
  ttl     = "${var.record_ttl}"
}
