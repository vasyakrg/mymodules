output "domain_name" {
  value = "${vscale_domain.domain.name}"
}

output "record_name" {
  value = "${vscale_record.record.name}"
}

output "record_content" {
  value = "${vscale_record.record.content}"
}
