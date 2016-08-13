#### Demo Nodes ####
variable image_id { default = "" }
variable contact  { default = "" }

variable demo_node_flavor_id      { default = "3" }
variable demo_node_instance_count { default = "1" }
variable demo_node_ssh_key_pair   { default = "" }
variable demo_node_admin_pass     { default = "" }

module "demo-node" {
  source = "../../../modules/compute/nodes/demo_node"

  image_id      = "${var.image_id}"
  flavor_id     = "${var.demo_node_flavor_id}"
  count         = "${var.demo_node_instance_count}"
  key_pair      = "${var.demo_node_ssh_key_pair}"
  admin_pass    = "${var.demo_node_admin_pass}"

  contact       = "${var.contact}"
}
