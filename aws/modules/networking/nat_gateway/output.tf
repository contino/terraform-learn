# outputs produced at the end of a terraform apply: id and ip of NAT gateway
output "nat_gateway_id" { value = "${aws_nat_gateway.nat_gateway.id}" }

output "nat_gateway_ip" { value = "${aws_eip.nat_gateway_ip.id}" }
