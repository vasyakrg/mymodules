variable "scalet_name" {
  default = ""
}

variable "scalet_location" {
  default = "spb0"
}

variable "scalet_plan" {
  default = "small"
}

variable "scalet_image" {
  type    = "list"
  default = ["debian_9_64_001_master", "centos_7_64_001_master"]
}

variable "scalet_image_index" {
  default = 0
}

variable "scalet_ssh_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "scalet_ssh_key_name" {
  default = "root-key"
}

variable "scalet_default_user" {
  default = "root"
}
