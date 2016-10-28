# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_dependency_instance_id" { value = [ "${aws_instance.demo-node-dependency.*.id}" ] }
output "demo_node_dependency_ip"          { value = [ "${aws_instance.demo-node-dependency.*.public_ip}" ] }
output "demo_node_dependency_sg_id"       { value = "${aws_security_group.demo-dependency-sg.id}" }
output "demo_node_dependency_value"       { value = "dummy_value" }
