<h1>Terraform AWS Infrastructure for WordPress Website</h1>

This Terraform project automates the provisioning of an AWS infrastructure to host a WordPress website. 

Below is an overview of the Terraform configuration defined in the main.tf file:

Provider Configuration: Specifies the AWS provider and sets the region based on the input variable.

VPC Resource: Defines a Virtual Private Cloud (VPC) with the specified CIDR block, enabling DNS support and hostnames.

Subnet Resources: Creates public and private subnets within the VPC, assigning CIDR blocks and availability zones.

Internet Gateway Resource: Establishes an internet gateway and attaches it to the VPC for internet access.

Route Table and Routes: Sets up a route table for the VPC and defines routes to the internet gateway for public subnets.

Security Group Resources: Configures security groups for the RDS database and web servers, defining ingress and egress rules.

RDS Database Resource: Creates an RDS MySQL database instance with specified configurations like storage, engine, instance class, etc.

Launch Template Resource: Defines a launch template for EC2 instances, specifying instance type, key pair, block device mapping, network interface, tags, and user data script. Additionally, it uses a pre-configured AMI for the instance.

Elastic Load Balancer (ELB) Resource: Sets up an ELB with specified configurations like name, type, subnets, security groups, etc.

Auto Scaling Group (ASG) Resource: Creates an ASG for EC2 instances, specifying desired capacity, minimum and maximum size, subnet identifiers, health checks, and launch template.

Route53 Zone and Record Resource: Establishes a Route53 DNS zone for the website domain and creates a DNS record aliasing the ELB.

HTTPS Listener Resource: Configures an HTTPS listener for the ELB, specifying SSL policy and forwarding requests to the target group.
