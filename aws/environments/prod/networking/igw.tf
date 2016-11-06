module "igw"{
  source      = "./../../../modules/networking/internet_gateway"
  environment = "${var.environment}"
  vpc_id      = "${module.vpc.vpc_id_out}"
}
