# creates an instance in Azure
resource "azure_instance" "demo-node" {
    # variables declared in variables.tf to specify the image to create an
    # instance of, the quantity of this instance (count) and also the size
    # of each instance.
    name                 = "demo-node-${count.index}"
    image                = "${var.image}"
    size                 = "${var.size}"
    storage_service_name = "${var.storage_name}"
    count                = "${var.count}"
    location             = "${var.location}"
    username             = "${var.ssh_username}"
    password             = "${var.ssh_password}"

    endpoint {
        name         = "SSH"
        protocol     = "tcp"
        public_port  = 22
        private_port = 22
    }
}
