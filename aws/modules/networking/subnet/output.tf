# outputs produced at the end of a terraform apply: id of base subnet
output "subnet_id_out" { value = "${aws_subnet.subnet.id}" }
