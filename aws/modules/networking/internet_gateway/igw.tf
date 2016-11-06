# create internet gateway, to be associated to a VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name        = "${var.environment}_igw"
    Environment = "${var.environment}"
  }
}
