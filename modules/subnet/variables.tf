

variable "vpc_id" {
  description = "The ID of the VPC"
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

variable "region" {
  description = "The region where AWS resources will be created"
  default = "ap-south-1"
}
