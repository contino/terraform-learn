########### Azure Instance 'demo-node' resource variables #############
#### the variables in this file are passed in at environment level ####

# instance variables
variable image         { default = "Ubuntu Server 14.04 LTS" }
variable size          { default = "Basic_A1" }
variable storage_name  { default = "" }
variable location      { default = "North Europe" }
variable count         { default = "1" }
variable ssh_username  { default = "" }
variable ssh_password  { default = "" }
