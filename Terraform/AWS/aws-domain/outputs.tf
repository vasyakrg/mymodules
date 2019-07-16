output "record_name" {
  value = "${aws_route53_record.record.name}"
}

output "records" {
  value = "${aws_route53_record.record.records}"
}
