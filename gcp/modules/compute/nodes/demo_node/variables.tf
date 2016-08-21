########### Google Cloud Platform Instance 'demo-node' resource variables #############
############ the variables in this file are passed in at environment level ############

# instance variables
variable image        { default = "debian-7-wheezy-v20160301" }
variable machine_type { default = "n1-standard-1" }
variable zone         { default = "us-central1-a" }
variable network_id   { default = "" }
variable count        { default = "1" }
variable owner        { default = "" }
