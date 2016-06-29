resource "google_compute_firewall" "ssh-access" {
  name    = "ssh-access"
  network = "${google_compute_network.other.name}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_instance" "demo-node" {
  name         = "demo-node-${count.index}"
  machine_type = "${var.machine_type}"#"n1-standard-1"
  zone         = "${var.zone}"#"us-central1-a"

  disk {
    image = "${var.image}"#"debian-7-wheezy-v20160301"
  }
}
