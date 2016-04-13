resource "aws_internet_gateway" "igw" {
    vpc_id = "${var.vpc_id}"
    tags {
        Name = "${var.project}_${var.environment}_igw"
        Owner = "${var.owner}"
        Environment = "${var.environment}"
        Project = "${var.project}"
    }
}
