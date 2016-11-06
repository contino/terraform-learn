# creates an instance in AWS
resource "aws_instance" "demo-node-dependency" {
  # variables declared in variables.tf to specify the base ami to create an
  # instance of (ami), the quantity of this instance (count) and also the size
  # of each instance (instance_type)
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  count                  = "${var.count}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.demo-dependency-sg.id}"]
  subnet_id              = "${var.subnet_id}"

  # metadata tagging
  tags {
      Name  = "demo-node-dependency-${count.index}"
      Owner = "${var.owner}"
  }
}

# creates a security group in AWS
resource "aws_security_group" "demo-dependency-sg" {
	name        = "demo-dependency-sg"
	description = "Allow SSH traffic incoming, allow all outgoing traffic"
  vpc_id      = "${var.vpc_id}"

  # allow SSH connectivity
	ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
	}

  # allow all outgoing traffic
	egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
	}

  # metadata tagging
	tags {
      Name  = "demo_dependency_sg"
      Owner = "${var.owner}"
  }
}
