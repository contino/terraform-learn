################## AWS private subnet variables ######################
### the variables in this file are passed in at environment level ####

# private subnet variables
variable vpc_id            {}
variable cidr_block        {}
variable availability_zone {}
variable route_table_id    {}

# tag variable
variable environment { description = "Environment resources belong to" }
