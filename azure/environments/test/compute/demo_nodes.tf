#### Demo Nodes ####
variable demo_node_image             { default = "Ubuntu Server 14.04 LTS" }
variable demo_node_instance_size     { default = "Basic_A1" }
variable demo_node_instance_location { default = "North Europe" }
variable demo_node_instance_count    { default = "1" }
variable demo_node_ssh_username      { default = "" }
variable demo_node_ssh_password      { default = "" }
variable demo_node_storage_name      { default = "" }

module "demo-node" {
  source = "../../../modules/compute/nodes/demo_node"

  image        = "${var.demo_node_image}"
  size         = "${var.demo_node_instance_size}"
  storage_name = "${var.demo_node_storage_name}"
  count        = "${var.demo_node_instance_count}"
  location     = "${var.demo_node_instance_location}"

  ssh_username = "${var.demo_node_ssh_username}"
  ssh_password = "${var.demo_node_ssh_password}"
}
