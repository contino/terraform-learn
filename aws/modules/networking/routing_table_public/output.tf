# outputs produced at the end of a terraform apply: id of base route table
output "pub_route_table_id_out" { value = "${aws_route_table.public_route_table.id}" }
