# outputs produced at the end of a terraform apply: id of internet gateway
output "igw_id_out" { value = "${aws_internet_gateway.igw.id}" }
