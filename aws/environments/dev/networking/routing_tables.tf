module "az_a_private_route" {
  source         = "./../../../modules/networking/routing_table_private"
  environment    = "${var.environment}"
  vpc_id         = "${module.vpc.vpc_id_out}"
  cidr_block     = "0.0.0.0/0"
  nat_gateway_id = "${module.az_a_nat_gateway.nat_gateway_id}"
  purpose        = "private"
}

module "az_b_private_route" {
  source         = "./../../../modules/networking/routing_table_private"
  environment    = "${var.environment}"
  vpc_id         = "${module.vpc.vpc_id_out}"
  cidr_block     = "0.0.0.0/0"
  nat_gateway_id = "${module.az_b_nat_gateway.nat_gateway_id}"
  purpose        = "private"
}

module "public_route" {
  source      = "./../../../modules/networking/routing_table_public"
  environment = "${var.environment}"
  vpc_id      = "${module.vpc.vpc_id_out}"
  cidr_block  = "0.0.0.0/0"
  gateway_id  = "${module.igw.igw_id_out}"
  purpose     = "public"
}
