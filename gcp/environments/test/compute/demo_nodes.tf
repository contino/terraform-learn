#### Demo Nodes ####
variable demo_node_image        { default = "centos-cloud/centos-6" }
variable demo_node_machine_type { default = "f1-micro" }
variable demo_node_zone         { default = "europe-west1-b" }
variable demo_node_network_id   { default = "" }
variable demo_node_count        { default = "1" }
variable demo_node_owner        { default = "" }

module "demo-node" {
  source = "../../../modules/compute/nodes/demo_node"

  image        = "${var.demo_node_image}"
  machine_type = "${var.demo_node_machine_type}"
  zone         = "${var.demo_node_zone}"
  network_id   = "${var.demo_node_network_id}"
  count        = "${var.demo_node_count}"

  owner        = "${var.demo_node_owner}"
}
