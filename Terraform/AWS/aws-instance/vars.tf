variable "ami" {
  default = "ami-0986c2ac728528ac2" # Ubuntu 18.04
}

variable "plan" {
  default = "t2.micro"
}

variable "monitoring_allow" {
  default = false
}

variable "security_groups" {
  default = "default"
}

variable "ssh_key_name" {
  default = ""
}

variable "tags" {
  type    = "map"
  default = null
}

variable "cidr_block" {
  default = "0.0.0.0/0"
}

variable "allow_tcp_ports" {
  type    = "list"
  default = ["22"]
}

variable "allow_udp_ports" {
  type    = "list"
  default = []
}
