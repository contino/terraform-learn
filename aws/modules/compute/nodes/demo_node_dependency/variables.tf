########### AWS Instance 'demo-node' resource variables #############
### the variables in this file are passed in at environment level ###

# instance variables
variable ami           { default = "" }
variable instance_type { default = "t2.micro" }
variable count         { default = "1" }
variable key_name      { default = "" }
variable subnet_id     {}
variable vpc_id        {}

# tag variables
variable owner         { default = "" }
