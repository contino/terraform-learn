# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_instance_id" { value = ["${aws_instance.demo-node.*.id}"] }
output "demo_node_ip"          { value = ["${aws_instance.demo-node.*.public_ip}"] }
output "demo_node_sg_id"       { value = "${aws_security_group.demo-sg.id}" }
