# outputs produced at the end of a terraform apply: id of the public subnet
output "pub_sub_id_out" { value = "${module.subnet_public.subnet_id_out}" }
