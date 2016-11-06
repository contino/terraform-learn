# outputs produced at the end of a terraform apply: id of private route table
output "priv_route_table_id_out" { value = "${aws_route_table.private_route_table.id}" }
