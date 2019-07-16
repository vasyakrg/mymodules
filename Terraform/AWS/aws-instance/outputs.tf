output "instance_private_ip" {
  value = "${aws_instance.inst.private_ip}"
}

output "instance_public_ip" {
  value = "${aws_instance.inst.public_ip}"
}

output "instance_public_dns" {
  value = "${aws_instance.inst.public_dns}"
}
