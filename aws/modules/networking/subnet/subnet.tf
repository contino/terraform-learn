# create a subnet, to be included as part of private/public subnet modules
resource "aws_subnet" "subnet" {
  cidr_block              = "${var.cidr_block}"
  vpc_id                  = "${var.vpc_id}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"

  tags {
    Name        = "${var.environment}_${var.purpose}_subnet_azone_${var.availability_zone}"
    Type        = "${var.purpose}"
    Environment = "${var.environment}"
  }
}
