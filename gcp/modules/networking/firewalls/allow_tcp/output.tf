# outputs produced at the end of a terraform apply: id and self-link of firewall
output "allow_tcp_fw_self_link" { value = "${google_compute_firewall.ssh-access.self_link}" }
output "allow_tcp_fw_id"        { value = "${google_compute_firewall.ssh-access.id}" }
