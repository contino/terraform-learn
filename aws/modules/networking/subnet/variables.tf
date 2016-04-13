variable "project" { description="The project's name or code which the resource(s) belong to." }
variable "owner" { description="The project owner(s) name or email address." }
variable "environment" { description="The environment name or code which the resource(s) belong to." }

variable "vpc_id" {}
variable "cidr_block" {}
variable "map_public_ip_on_launch" {}
variable "availability_zone" {}
variable "aws_region" {}
variable "purpose" {
	default = ""
}