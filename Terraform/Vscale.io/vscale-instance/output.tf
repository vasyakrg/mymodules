output "scalet_ip-address" {
  value = "${vscale_scalet.scalet_instance.public_address}"
}

output "scalet_name" {
  value = "${vscale_scalet.scalet_instance.name}"
}
