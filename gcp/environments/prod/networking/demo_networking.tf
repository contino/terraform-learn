#### Demo Networking ####

#### Network ####
variable "network_name" { description = "Name of the network" }

module "demo-network" {
  source = "../../../modules/networking/network"

  network_name            = "${var.network_name}"
}

#### Allow TCP Firewall ####
variable "fw_name"     { description = "Firewall name" }
variable "allow_ports" { type = "list" description = "Array of the ports to allow" }

module "allow-tcp-fw" {
  source = "../../../modules/networking/firewalls/allow_tcp"

  fw_name           = "${var.fw_name}"
  parent_network_id = "${module.demo-network.network_id}"
  allow_ports       = ["${var.allow_ports}"]
}
