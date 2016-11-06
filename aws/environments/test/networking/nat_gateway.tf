module "az_a_nat_gateway"{
  source    = "./../../../modules/networking/nat_gateway"
  subnet_id = "${module.subnet_public_a.pub_sub_id_out}"
}

module "az_b_nat_gateway"{
  source    = "./../../../modules/networking/nat_gateway"
  subnet_id = "${module.subnet_public_b.pub_sub_id_out}"
}
