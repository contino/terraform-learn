########### Azure Instance 'demo-node' resource variables #############
#### the variables in this file are passed in at environment level ####

# instance variables
variable image         { default = "Ubuntu Server 14.04 LTS" }
variable size          { default = "Basic_A1" }
variable location      { default = "West US" }
variable count         { default = "1" }
variable ssh_username  { default = "" }
variable ssh_password  { default = "" }
