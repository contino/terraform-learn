# outputs produced at the end of a terraform apply: id of the VPC
output "vpc_id_out" { value = "${aws_vpc.vpc.id}" }
