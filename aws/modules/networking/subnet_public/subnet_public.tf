# create a public subnet in an availability zone, associated with IGW & routing table
module "subnet_public" {
  source                  = "./../subnet"
  environment             = "${var.environment}"
  cidr_block              = "${var.cidr_block}"
  vpc_id                  = "${var.vpc_id}"
  availability_zone       = "${var.availability_zone}"
  purpose                 = "public"
  map_public_ip_on_launch = "true"
}

# associate public routing table with subnet
resource "aws_route_table_association" "public_subnet_route_association" {
  subnet_id      = "${module.subnet_public.subnet_id_out}"
  route_table_id = "${var.route_table_id}"
}
