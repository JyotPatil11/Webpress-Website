

variable "desired_capacity" {
  description = "Desired number of instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances"
  type        = number
}

variable "min_size" {
  description = "Minimum number of instances"
  type        = number
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "launch_template_id" {
  description = "ID of the launch template"
  type        = string
}

variable "launch_template_version" {
  description = "Version of the launch template"
  type        = string
}
