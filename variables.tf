# variables.tf

variable "region" {
  description = "The region where AWS resources will be created"
  default     = "ap-south-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
  description = "CIDR block for the public subnet 1"
  default     = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  description = "CIDR block for the public subnet 2"
  default     = "10.0.2.0/24"
}

variable "private_subnet1_cidr" {
  description = "CIDR block for the private subnet 1"
  default     = "10.0.3.0/24"
}

variable "private_subnet2_cidr" {
  description = "CIDR block for the private subnet 2"
  default     = "10.0.4.0/24"
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  default = "admin"
}


variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
  default = "believebelieve"
}

variable "domain_name" {
  description = "Domain name for the Route 53 hosted zone"
  type        = string
  default = "webpresswebsite"
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate"
  type        = string
  default = "arn:aws:acm:us-east-1:123456789012:certificate/abcdef12-3456-7890-abcd-1234567890ab"
}
