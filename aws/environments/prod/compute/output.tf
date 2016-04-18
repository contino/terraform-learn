# outputs produced at the end of a terraform apply: e.g. id and ip of the instances
output "demo_node_id" { value = "${module.demo-node.demo_node_id}" }
output "demo_node_ip" { value = "${module.demo-node.demo_node_ip}" }
