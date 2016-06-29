resource "openstack_compute_instance_v2" "demo-node" {
  name            = "demo-node-${count.index}"
  image_id        = "${var.image_id}"#"ad091b52-742f-469e-8f3c-fd81cadf0743"
  flavor_id       = "${var.flavor_id}"#"3"
  key_pair        = "${var.key_pair}"#"my_key_pair_name"
  security_groups = ["demo-sg"]

  metadata {
    Contact = "${var.contact}"
  }
}

resource "openstack_networking_secgroup_v2" "demo-sg" {
  name        = "demo-sg"
  description = "A security group for demonstration purposes"
}

resource "openstack_networking_secgroup_rule_v2" "demo-sg-rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.demo-sg.id}"
}
