

variable "subnets" {
  description = "List of subnets for the ELB"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security groups for the ELB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
