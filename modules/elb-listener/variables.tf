

variable "load_balancer_arn" {
  description = "The ARN of the load balancer"
  type        = string
}

variable "target_group_arn" {
  description = "The ARN of the target group"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}
