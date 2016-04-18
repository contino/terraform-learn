#### Demo Nodes ####
variable ami   { default = "" }
variable owner { default = "" }

variable demo_node_instance_type  { default = "t2.micro" }
variable demo_node_instance_count { default = "1" }
variable demo_node_ssh_key_name   { default = "" }

module "demo-node" {
  source = "../../../modules/compute/nodes/demo_node"

  # instance configuration
  ami           = "${var.ami}"
  instance_type = "${var.demo_node_instance_type}"
  count         = "${var.demo_node_instance_count}"
  key_name      = "${var.demo_node_ssh_key_name}"

  # tagging
  owner = "${var.owner}"
}
