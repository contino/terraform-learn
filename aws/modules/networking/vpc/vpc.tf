# creates a VPC in AWS
resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr_block}"
  enable_dns_hostnames = true

  # metadata tagging
  tags {
    Name        = "${var.environment}_vpc"
    Environment = "${var.environment}"
  }
}
