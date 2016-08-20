# creates an allow TCP firewall in GCP
resource "google_compute_firewall" "ssh-access" {
  name    = "${var.fw_name}"
  network = "${var.parent_network_id}"

  allow {
    protocol = "tcp"
    ports    = ["${var.allow_ports}"]
  }
}
