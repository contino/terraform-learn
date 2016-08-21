# Terraform Azure

## Terraform Commands

* [`terraform get`](https://www.terraform.io/docs/commands/get.html)
* [`terraform plan`](https://www.terraform.io/docs/commands/plan.html)
* [`terraform apply`](https://www.terraform.io/docs/commands/apply.html)
* [`terraform destroy`](https://www.terraform.io/docs/commands/destroy.html)

## Azure Basic Compute Demo

This basic compute demo will consist of the orchestration of blank Basic_A1 Azure instances into Microsoft Azure.

### Pre-requisites

- It is assumed that this demo is being ran from a UNIX based machine
- A Microsoft Azure account [-Sign up here-](https://azure.microsoft.com/en-gb/free/)
  - Azure API authentication credentials for your account stored locally. Download them  [here](https://manage.windowsazure.com/publishsettings)
- This repository cloned locally (install Git [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- Terraform installed (install it [here](https://www.terraform.io/downloads.html))

### Instructions

1. cd into `{location_of_this_repo}/azure/environments/{environment_you_wish_to_build}/compute`
2. open `terraform.tfvars` and enter a value for variables `ssh_username`, `ssh_password`, `storage_name`* and save
3. run command `export AZURE_PUBLISH_SETTINGS=$(cat {path_to_the_publish_settings_downloaded_in_prereqs})`
4. run command `terraform get`  
5. run command `terraform plan -var-file=./terraform.tfvars`
6. run command `terraform apply -state=./terraform.tfstate -var-file=./terraform.tfvars`

To destroy the infrastructure you have built, run command `terraform destroy -state=./terraform.tfstate -var-file=./terraform.tfvars`

* The `storage_name` variable is the name of the storage service to attach to the instance, it is blob storage service in Azure that serves as the backend to the instance. To build a storage using this make a module declaration within an environment for the `storage_service` module at `./modules/compute/storage/storage_service` and pass the appropriate variables in the `terraform.tfvars` file of the specified environment. It's important to note that each storage service requires a unique name.
