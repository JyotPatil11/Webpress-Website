

variable "domain_name" {
  description = "Domain name for the Route 53 hosted zone"
  type        = string
}

variable "record_name" {
  description = "Record name for the DNS record"
  type        = string
}

variable "elb_dns_name" {
  description = "DNS name of the load balancer"
  type        = string
}

variable "elb_zone_id" {
  description = "Zone ID of the load balancer"
  type        = string
}
