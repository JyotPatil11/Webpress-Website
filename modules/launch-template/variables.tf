# modules/launch-template/variables.tf

variable "image_id" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "security_group_names" {
  description = "List of security group names"
  type        = list(string)
}

variable "device_name" {
  description = "Name of the device"
  type        = string
  default     = "/dev/xvda"
}

variable "volume_size" {
  description = "Size of the EBS volume"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "Type of the EBS volume"
  type        = string
  default     = "gp2"
}

variable "delete_on_termination" {
  description = "Delete EBS volume on termination"
  type        = bool
  default     = true
}

variable "associate_public_ip_address" {
  description = "Associate public IP address"
  type        = bool
  default     = true
}

variable "instance_tags" {
  description = "Tags for the instance"
  type        = map(string)
  default = {
    Name = "wordpress-instance"
  }
}
