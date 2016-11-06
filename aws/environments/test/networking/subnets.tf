#create public subnets in two different availability zones

module "subnet_public_a" {
  source            = "./../../../modules/networking/subnet_public"
  environment       = "${var.environment}"
  cidr_block        = "${var.subnet_a_public_cidr_block}"
  vpc_id            = "${module.vpc.vpc_id_out}"
  availability_zone = "${var.subnet_a_az}"
  route_table_id    = "${module.public_route.pub_route_table_id_out}"
}

module "subnet_public_b" {
  source            = "./../../../modules/networking/subnet_public"
  environment       = "${var.environment}"
  cidr_block        = "${var.subnet_b_public_cidr_block}"
  vpc_id            = "${module.vpc.vpc_id_out}"
  availability_zone = "${var.subnet_b_az}"
  route_table_id    = "${module.public_route.pub_route_table_id_out}"
}

#create private subnets in two different availability zones

module "subnet_private_a" {
  source            = "./../../../modules/networking/subnet_private"
  environment       = "${var.environment}"
  cidr_block        = "${var.subnet_a_private_cidr_block}"
  vpc_id            = "${module.vpc.vpc_id_out}"
  availability_zone = "${var.subnet_a_az}"
  route_table_id    = "${module.az_a_private_route.priv_route_table_id_out}"
}

module "subnet_private_b" {
  source            = "./../../../modules/networking/subnet_private"
  environment       = "${var.environment}"
  cidr_block        = "${var.subnet_b_private_cidr_block}"
  vpc_id            = "${module.vpc.vpc_id_out}"
  availability_zone = "${var.subnet_b_az}"
  route_table_id    = "${module.az_b_private_route.priv_route_table_id_out}"
}
