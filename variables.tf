variable "name" {
  description = "A unique name for the rule, required by GCE"
}

variable "description" {
  description = "Description for the rule"
  default     = "Firewall rule provisioned by terraform"
}

variable "priority" {
  description = "Priority of the rule: ranges from 0-65535. Lower numbers have higher priority."
  default     = "1000"
}

variable "network" {
  description = "The name of the network to attach this firewall to"
  default = "default"
}

variable "protocol" {
  description = "The name of the protocol to allow"
  default = "tcp"
}

variable "ports" {
  description = "List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP"
  type        = list(string)
  default     = ["22"]
}

variable "source_ranges" {
  description = "A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS"
  type        = list(string)
}

