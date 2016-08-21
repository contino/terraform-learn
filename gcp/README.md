# Terraform GCP

## Terraform Commands

* [`terraform get`](https://www.terraform.io/docs/commands/get.html)
* [`terraform plan`](https://www.terraform.io/docs/commands/plan.html)
* [`terraform apply`](https://www.terraform.io/docs/commands/apply.html)
* [`terraform destroy`](https://www.terraform.io/docs/commands/destroy.html)

## Azure Basic Compute Demo

This basic compute demo will consist of the orchestration of blank n1-standard-1 Google Compute instances and the basic networking that is required for this into Microsoft Azure.

### Pre-requisites

- It is assumed that this demo is being ran from a UNIX based machine
- A Google Cloud Platform account [-Sign up here-](https://cloud.google.com/free-trial/)
  - GCP API authentication credentials for your account stored locally, steps:
    - Log into the Google Developers Console and select a project
    - The API Manager view should be selected, click on "Credentials" on the left, then "Create credentials", and finally "Service account key"
    - Select "Compute Engine default service account" in the "Service account" dropdown, and select "JSON" as the key type
    - Clicking "Create" will download your credentials
- This repository cloned locally (install Git [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- Terraform installed (install it [here](https://www.terraform.io/downloads.html))

### Instructions

#### Basic Networking
1. cd into `{location_of_this_repo}/azure/environments/{environment_you_wish_to_build}/networking`
2. open 'terraform.tfvars' and enter a value for variable `network_name` and save
3. run command `export GOOGLE_CREDENTIALS=$(cat {path_to_credentials_json_file_downloaded_in_prereqs})`
3. run command `export GOOGLE_PROJECT={your_gcp_project_name_here}`
3. run command `export GOOGLE_REGION={selected_gcp_region_here}`
4. run command `terraform get`  
5. run command `terraform plan -var-file=./terraform.tfvars`
6. run command `terraform apply -state=./terraform.tfstate -var-file=./terraform.tfvars`

#### Basic Compute
1. run command `cd ../compute`
2. open 'terraform.tfvars' and enter a value for variables `network_name` (the name of the network create above), `owner` (used to identify the creator) and save
4. run command `terraform get`  
5. run command `terraform plan -var-file=./terraform.tfvars`
6. run command `terraform apply -state=./terraform.tfstate -var-file=./terraform.tfvars`

To destroy the compute infrastructure you have built, run command `terraform destroy -state=./terraform.tfstate -var-file=./terraform.tfvars`

To destroy the networking infrastructure you have built (from the compute directory), run command `terraform destroy -state=../networking/terraform.tfstate -var-file=../networking/terraform.tfvars`
