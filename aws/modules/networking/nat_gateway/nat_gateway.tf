# create an elastic IP and associate to a newly created NAT gateway
resource "aws_eip" "nat_gateway_ip" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = "${aws_eip.nat_gateway_ip.id}"
  subnet_id     = "${var.subnet_id}"
}
