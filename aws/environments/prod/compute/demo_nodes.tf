#### Class wide variables ####
variable ami   { default = "" }
variable owner { default = "" }


#### Demo Nodes ####
variable demo_node_instance_type  { default = "t2.micro" }
variable demo_node_instance_count { default = "1" }
variable demo_node_ssh_key_name   { default = "" }
variable demo_node_subnet_id      {}
variable demo_node_vpc_id         {}

module "demo-node" {
  source = "../../../modules/compute/nodes/demo_node"

  # instance configuration
  ami           = "${var.ami}"
  instance_type = "${var.demo_node_instance_type}"
  count         = "${var.demo_node_instance_count}"
  key_name      = "${var.demo_node_ssh_key_name}"
  subnet_id     = "${var.demo_node_subnet_id}"
  vpc_id        = "${var.demo_node_vpc_id}"

  owner         = "${var.owner}"
  dependencies    = ["${module.demo-node-dependency.demo_node_dependency_instance_id}"]
}
#####################


#### Demo Node Dependency ####
variable demo_node_dependency_instance_type  { default = "t2.micro" }
variable demo_node_dependency_instance_count { default = "1" }
variable demo_node_dependency_ssh_key_name   { default = "" }
variable demo_node_dependency_subnet_id      {}
variable demo_node_dependency_vpc_id         {}

module "demo-node-dependency" {
  source = "../../../modules/compute/nodes/demo_node_dependency"

  ami           = "${var.ami}"
  instance_type = "${var.demo_node_dependency_instance_type}"
  count         = "${var.demo_node_dependency_instance_count}"
  key_name      = "${var.demo_node_dependency_ssh_key_name}"
  subnet_id     = "${var.demo_node_dependency_subnet_id}"
  vpc_id        = "${var.demo_node_dependency_vpc_id}"

  owner         = "${var.owner}"
}
##############################
