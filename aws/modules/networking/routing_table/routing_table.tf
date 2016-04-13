resource "aws_route_table" "route_table" {
    vpc_id = "${var.vpc_id}"
    route {
        cidr_block = "${var.cidr_block}"
        gateway_id = "${var.gateway_id}"
    }
    tags {
    	Name = "${var.project}_${var.environment}_${var.aws_region}_${var.purpose}_routing_table"
        Owner = "${var.owner}"
        Environment = "${var.environment}"
        Project = "${var.project}"
    }
}
