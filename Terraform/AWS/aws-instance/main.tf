resource "aws_instance" "inst" {
  ami           = "${var.ami}"
  instance_type = "${var.plan}"
  monitoring    = "${var.monitoring_allow}"

  security_groups = ["${aws_security_group.allow_ssh.name}", "${var.security_groups}"]
  key_name        = "${var.ssh_key_name}"

  tags = "${var.tags}"
}
