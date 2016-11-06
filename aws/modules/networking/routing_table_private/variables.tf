###################### AWS private routing table variables ##########################
########### the variables in this file are passed in at environment level ###########

# routing table variables
variable vpc_id         {}
variable cidr_block     {}
variable nat_gateway_id {}
variable purpose        {}

# tag variable
variable environment { description = "Environment resources belong to" }
