# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_instance_id" { value = ["${google_compute_instance.demo-node.*.id}"] }
output "demo_node_ip"          { value = ["${google_compute_instance.demo-node.*.network_interface.0.address}"] }
