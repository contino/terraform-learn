# creates an instance in GCP
resource "google_compute_instance" "demo-node" {
  # variables declared in variables.tf to specify the image to create an
  # instance of, the quantity of this instance (count) and also the size
  # of each instance (machine_type)
  name         = "demo-node-${count.index}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  count        = "${var.count}"
  
  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  # network config
  network_interface {
    network = "${var.network_id}"
  }

  # metadata tagging
  metadata {
    owner = "${var.owner}"
  }
}
