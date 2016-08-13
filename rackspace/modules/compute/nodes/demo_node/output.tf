# outputs produced at the end of a terraform apply: id of the instances, id of
# security group(s) they are part of
output "demo_node_instance_id" { value = "${join(",", openstack_compute_instance_v2.demo-node.*.id)}" }
output "demo_node_ip"          { value = "${join(",", openstack_compute_instance_v2.demo-node.*.public_ip)}" }
output "demo_node_sg_id"       { value = "${openstack_networking_secgroup_v2.demo-sg.id}" }
