variable "dns_zone_name" {
  default = ""
}

variable "record_name" {
  default = ""
}

variable "record_type" {
  default = "A"
}

variable "record_ttl" {
  default = "300"
}

variable "records" {
  type    = "list"
  default = [""]
}
