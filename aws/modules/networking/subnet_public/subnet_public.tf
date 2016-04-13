#create a public subnet in an availability zone with Internet gateway and routing table associated
#output public subnet id

module "subnet_public" {
    source           = "./../subnet"
    owner            = "${var.owner}"
    project          = "${var.project}"
    environment      = "${var.environment}"
    cidr_block       = "${var.cidr_block}"
    vpc_id           = "${var.vpc_id}"
    aws_region       = "${var.aws_region}"
    availability_zone= "${var.availability_zone}"
    purpose          = "public"
    map_public_ip_on_launch = "true"
}


#associate public routing table with subnet
resource "aws_route_table_association" "public_subnet_route_association" {
    subnet_id = "${module.subnet_public.subnet_id_out}"
    route_table_id = "${var.route_table_id}"
}