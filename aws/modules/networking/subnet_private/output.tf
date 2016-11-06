# outputs produced at the end of a terraform apply: id of the private subnet and
# private routing table
output "priv_sub_id_out"       { value = "${module.subnet_private.subnet_id_out}" }
