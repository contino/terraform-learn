# creates an instance in Rackspace
resource "openstack_compute_instance_v2" "demo-node" {
  # variables declared in variables.tf to specify the base ami to create an
  # instance of (image_id), the quantity of this instance (count) and also the size
  # of each instance (flavor_id)
  name            = "demo-node-${count.index}"
  image_id        = "${var.image_id}"
  flavor_id       = "${var.flavor_id}"
  count           = "${var.count}"
  key_pair        = "${var.key_pair}"
  admin_pass      = "${var.admin_pass}"
  security_groups = ["demo-sg"]

  # metadata tagging
  metadata {
    Contact = "${var.contact}"
  }
}

# creates a security group in Rackspace
resource "openstack_networking_secgroup_v2" "demo-sg" {
  name        = "demo-sg"
  description = "A security group for demonstration purposes"
}

# creates a security group rule in Rackspace
resource "openstack_networking_secgroup_rule_v2" "demo-sg-rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.demo-sg.id}"
}
