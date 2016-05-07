# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_dependency_instance_id" { value = "${join(",", aws_instance.demo-node-dependency.*.id)}" }
output "demo_node_dependency_sg_id"       { value = "${aws_security_group.demo-dependency-sg.id}" }
