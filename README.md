<h1> Terraform AWS Infrastructure for WordPress Website <h1>

<h1>

## Description of Files and Directories

- **main.tf**: The main Terraform configuration file.
- **variables.tf**: File declaring the variables used in the root module.
- **terraform.tfvars**: File providing values for the declared variables.
- **provider.tf**: File specifying the provider configuration (e.g., AWS).

### Modules

- **vpc**
  - `main.tf`: Terraform configuration for VPC.
  - `variables.tf`: Variables specific to the VPC module.
  - `outputs.tf`: Outputs from the VPC module.

- **subnets**
  - `main.tf`: Terraform configuration for subnets.
  - `variables.tf`: Variables specific to the subnets module.
  - `outputs.tf`: Outputs from the subnets module.

- **internet_gateway**
  - `main.tf`: Terraform configuration for Internet Gateway.
  - `outputs.tf`: Outputs from the Internet Gateway module.

- **route_table**
  - `main.tf`: Terraform configuration for route tables.
  - `variables.tf`: Variables specific to the route tables module.
  - `outputs.tf`: Outputs from the route tables module.

- **security_groups**
  - `main.tf`: Terraform configuration for security groups.
  - `variables.tf`: Variables specific to the security groups module.
  - `outputs.tf`: Outputs from the security groups module.

- **db_instance**
  - `main.tf`: Terraform configuration for the database instance.
  - `variables.tf`: Variables specific to the database instance module.
  - `outputs.tf`: Outputs from the database instance module.

- **launch_template**
  - `main.tf`: Terraform configuration for the launch template.
  - `variables.tf`: Variables specific to the launch template module.
  - `outputs.tf`: Outputs from the launch template module.

- **elb**
  - `main.tf`: Terraform configuration for the ELB.
  - `variables.tf`: Variables specific to the ELB module.
  - `outputs.tf`: Outputs from the ELB module.

- **route53**
  - `main.tf`: Terraform configuration for Route 53.
  - `variables.tf`: Variables specific to the Route 53 module.
  - `outputs.tf`: Outputs from the Route 53 module.

- **autoscaling_group**
  - `main.tf`: Terraform configuration for the Auto Scaling Group.
  - `variables.tf`: Variables specific to the Auto Scaling Group module.
  - `outputs.tf`: Outputs from the Auto Scaling Group module.

</h2>

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
