# creates a network in GCP
resource "google_compute_network" "demo-network" {
  name                    = "${var.network_name}"
  auto_create_subnetworks = true
}
