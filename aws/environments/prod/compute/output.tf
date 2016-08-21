# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_id"    { value = "${module.demo-node.demo_node_instance_id}" }
output "demo_node_ip"    { value = "${module.demo-node.demo_node_ip}" }
output "demo_node_sg_id" { value = "${module.demo-node.demo_node_sg_id}" }

output "demo_node_dependency_id"    { value = "${module.demo-node-dependency.demo_node_dependency_instance_id}" }
output "demo_node_dependency_ip"    { value = "${module.demo-node-dependency.demo_node_dependency_ip}" }
output "demo_node_dependency_sg_id" { value = "${module.demo-node-dependency.demo_node_dependency_sg_id}" }
