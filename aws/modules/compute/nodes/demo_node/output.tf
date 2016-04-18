# outputs produced at the end of a terraform apply: e.g. the id and ip of an instance
output "demo_node_id"    { value = "${join(",", aws_instance.demo-node.*.id)}" }
output "demo_node_sg_id" { value = "${join(",", aws_instance.demo-node.*.public_ip)}" }
