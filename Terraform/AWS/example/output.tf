# output "record_name" {
#   value = "${module.aws-domain.record_name}"
# }
#
# output "record_records" {
#   value = "${module.aws-domain.records}"
# }

output "instance_public_ip" {
  value = "${module.aws-instance.instance_public_ip}"
}
