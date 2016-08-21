# outputs produced at the end of a terraform apply: id and ip of the instances, id of
# security group(s) they are part of
output "demo_node_instance_id" { value = [ "${azure_instance.demo-node.*.id}" ] }
output "demo_node_ip"          { value = [ "${azure_instance.demo-node.*.vip_address}" ]}
