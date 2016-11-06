################### AWS VPC resource variables ######################
### the variables in this file are passed in at environment level ###

# vpc variable
variable cidr_block  { default = "10.0.0.0/24" }

# tag variable
variable environment { description = "Environment resources belong to" }
