################# GCP Firewall resource variables ###################
### the variables in this file are passed in at environment level ###

# firewall variables
variable "fw_name"           { description = "Firewall name" }
variable "parent_network_id" { description = "ID of the network to place the firewall" }
variable "allow_ports"       { type = "list" description = "Array of the ports to allow" }
