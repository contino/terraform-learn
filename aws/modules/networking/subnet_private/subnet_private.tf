#create a private subnet in an availability zone with NAT gateway and routing table associated
#output private subnet id and private routing table id applicable for additional private subnet within the same Availability zone

module "subnet_private" {
    source           = "./../subnet"
    owner            = "${var.owner}"
    project          = "${var.project}"
    environment      = "${var.environment}"
    cidr_block       = "${var.cidr_block}"
    vpc_id           = "${var.vpc_id}"
    aws_region       = "${var.aws_region}"
    availability_zone= "${var.availability_zone}"
    purpose          = "private"
    map_public_ip_on_launch = "false"
}

#create NAT gateway

module "nat_gateway" {
    source           = "./../nat_gateway"
    subnet_id           = "${module.subnet_private.subnet_id_out}"
}

#create routing table and associate with subnet

module "private_route_table"{
    source           = "./../routing_table"
    owner            = "${var.owner}"
    project          = "${var.project}"
    environment      = "${var.environment}"
    vpc_id           = "${var.vpc_id}"
    cidr_block       = "0.0.0.0/0"
    gateway_id       = "${module.nat_gateway.nat_gateway_id}"
    aws_region       = "${var.aws_region}"
    purpose          = "private"
}

resource "aws_route_table_association" "private_subnet_route_association" {
    subnet_id = "${module.subnet_private.subnet_id_out}"
    route_table_id = "${module.private_route_table.route_table_id_out}"
}