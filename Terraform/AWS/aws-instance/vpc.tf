resource "aws_security_group" "default" {
  name = "allow-ports"
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["${var.cidr_block}"]
  description       = "All egress traffic"
  security_group_id = "${aws_security_group.default.id}"
}

resource "aws_security_group_rule" "tcp" {
  count             = "${length(var.allow_tcp_ports)}"
  type              = "ingress"
  from_port         = "${var.allow_tcp_ports[count.index]}"
  to_port           = "${var.allow_tcp_ports[count.index]}"
  protocol          = "tcp"
  description       = ""
  cidr_blocks       = ["${var.cidr_block}"]
  security_group_id = "${aws_security_group.default.id}"
}

resource "aws_security_group_rule" "udp" {
  count             = "${length(var.allow_udp_ports)}"
  type              = "ingress"
  from_port         = "${var.allow_udp_ports[count.index]}"
  to_port           = "${var.allow_udp_ports[count.index]}"
  protocol          = "udp"
  description       = ""
  cidr_blocks       = ["${var.cidr_block}"]
  security_group_id = "${aws_security_group.default.id}"
}
