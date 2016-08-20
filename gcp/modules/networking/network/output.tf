# outputs produced at the end of a terraform apply: id and self-link of firewall
output "network_id"        { value = "${google_compute_network.demo-network.id}" }
output "network_self_link" { value = "${google_compute_network.demo-network.self_link}" }
