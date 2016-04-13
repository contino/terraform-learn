# Terraform AWS Sample Stack

## Terraform Commands

* `terraform get` to collect the required modules
* `terraform plan` to see what it would do
* `terraform apply` to actually make the changes
* `terraform destroy` to remove all resources built with `terraform apply`.  Use with extreme caution!

## Directory Structure

This directory currently consists of 3 sub-directories: compute, modules and networking. The compute and networking sub-directories detail the modules that are required per environment, and the modules sub-directory is the location for all of the actual resource creation code that can be re-used for any environment that requires it.

The directories can be thought of like this:
- modules: a supermarket with all of the available re-usable modules
- compute: a set of shopping lists per environment to fulfill by pulling modules from the supermarket. e.g. 'dev' environment requires 3 instances of the demo_node module, 'prod' needs 2
- networking: a set of shopping lists per environment to fulfill by pulling modules from the supermarket. e.g. 'dev' environment requires 4 instances of the subnet module, 'prod' needs 8
