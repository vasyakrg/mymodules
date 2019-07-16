resource "vscale_ssh_key" "key" {
  name = "${var.scalet_ssh_key_name}"
  key  = "${file("${var.scalet_ssh_key_path}")}"
}

resource "vscale_scalet" "scalet_instance" {
  name      = "${var.scalet_name}"
  ssh_keys  = ["${vscale_ssh_key.key.id}"]
  make_from = "${var.scalet_image["${var.scalet_image_index}"]}"
  location  = "${var.scalet_location}"
  rplan     = "${var.scalet_plan}"
}
