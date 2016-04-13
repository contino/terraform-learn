resource "aws_vpc" "vpc" {
    cidr_block           = "${var.cidr_block}"
    enable_dns_hostnames = true
    tags {
        Name        = "${var.project}_${var.environment}_vpc"
        Owner       = "${var.owner}"
        Environment = "${var.environment}"
        Project     = "${var.project}"
    }
}
