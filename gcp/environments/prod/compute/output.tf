# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_id"    { value = "${module.demo-node.demo_node_instance_id}" }
output "demo_node_ip"    { value = "${module.demo-node.demo_node_ip}" }
