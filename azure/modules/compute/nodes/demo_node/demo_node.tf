resource "azure_security_group" "demo-sg" {
    name     = "demo-sg"
    location = "${var.location}"
}

resource "azure_security_group_rule" "ssh-access" {
    name                       = "ssh-access-rule"
    security_group_names       = ["${azure_security_group.demo-sg.name}"]
    type                       = "Inbound"
    action                     = "Allow"
    priority                   = 200
    source_address_prefix      = "100.0.0.0/32"
    source_port_range          = "*"
    destination_address_prefix = "10.0.0.0/32"
    destination_port_range     = "22"
    protocol                   = "TCP"
}

resource "azure_instance" "demo-node" {
    name           = "demo-node-${count.index}"
    image          = "${var.image}"
    size           = "${var.size}"
    count          = "${var.count}"
    location       = "${var.location}"
    username       = "${var.ssh_username}"
    password       = "${var.ssh_password}"
    security_group = "demo-sg"

    endpoint {
        name         = "SSH"
        protocol     = "tcp"
        public_port  = 22
        private_port = 22
    }
}
