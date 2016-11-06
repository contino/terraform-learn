# Terraform Learn

This repository aims to provide a helpful set of structural guidelines to follow
when working with Terraform, as well giving a basic enablement with the tool through
a series of simple demos.

What is Terraform? Have a read [here](https://www.terraform.io/intro/index.html)!

How can I install Terraform on my machine? Get it [here](https://www.terraform.io/downloads.html)!


## What can you learn?

The end state of this Terraform repository will have the ability to deploy compute
and networking infrastructure into the following cloud providers:

* [AWS](http://aws.amazon.com/)
* [Microsoft Azure](https://azure.microsoft.com/en-gb/)
* [Google Cloud Platform](https://cloud.google.com/)

Networking infrastructure will contain:

* VPCs
* Subnets (public & private)
* Routing Tables
* NAT Gateways
* Internet Gateways
* Security Groups
* Elastic Load Balancers

Compute infrastructure will contain:

* EC2 instances (AWS)
* Azure instances (Microsoft Azure)
* Google compute instances (Google Cloud Platform)

Terraform provisioning will contain examples of:

* Puppet configuration management
* Chef configuration management
* Ansible configuration management


## When can you learn it?

Terraform code for the above code is to be released incrementally in parts, accompanied by a blog. The releases will be split as follows:

- Release 1: Directory Structure and Basic Compute in AWS (Find the demo [here](https://github.com/contino/terraform-learn/blob/master/aws/README.md))
- Release 2: Basic Compute in Microsoft Azure & Google Cloud Platform (Find the demos [here](https://github.com/contino/terraform-learn/blob/master/azure/README.md) and [here](https://github.com/contino/terraform-learn/blob/master/gcp/README.md) respectively)
- Release 3: Networking Infrastructure 
- Release 4: Terraform Provisioning with Puppet, Chef & Ansible

Each release will also be accompanied with a series of demos relating to the new functionality.


## The Commands

These are the commands that will be at the core of every demo contained in this repository:

* [`terraform get`](https://www.terraform.io/docs/commands/get.html)
* [`terraform plan`](https://www.terraform.io/docs/commands/plan.html)
* [`terraform apply`](https://www.terraform.io/docs/commands/apply.html)
* [`terraform destroy`](https://www.terraform.io/docs/commands/destroy.html)

Before progressing into any demos, it is also very important to understand ['state' in the context of Terraform](https://www.terraform.io/docs/state/index.html), how it is fits in and the criticality of state file management.

## Directory Structure

Each directory level will have a explanation of how the sub-directories are all structured, what is contained in them and why they should be set out this way.

This is the base of the Terraform repository, inclusive of sub-directories that are named after the cloud providers that you wish to deploy into using Terraform.
