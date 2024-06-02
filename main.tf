# main.tf

module "my_vpc" {
  source = "./modules/vpc"
}

module "my_subnets" {
  source = "./modules/subnet"
  
  vpc_id = module.my_vpc.vpc_id
}

module "my_igw" {
  source = "./modules/internet-gateway"
  vpc_id = module.my_vpc.vpc_id
}

module "my_route_table" {
  source = "./modules/route-table"
  vpc_id = module.my_vpc.vpc_id
  gateway_id = module.my_igw.internet_gateway_id
  public_subnet1_id = module.my_subnets.public_subnet1_id
  public_subnet2_id = module.my_subnets.public_subnet2_id
}

module "my_security_groups" {
  source = "./modules/security-groups"
  vpc_id = module.my_vpc.vpc_id
}

module "my_rds" {
  source = "./modules/rds"
  subnet_ids = [module.my_subnets.private_subnet1_id, module.my_subnets.private_subnet2_id]
  db_username = var.db_username
  db_password = var.db_password
  vpc_security_group_ids = [module.my_security_groups.db_sg_id]
}

module "my_launch_template" {
  source = "./modules/launch-template"
  image_id = "ami-0d3ef924664991ff2"
  instance_type = "t2.micro"
  key_name = "Wordpress-keypair.pem"  # Replace with the name of your key pair file
  security_group_names = [module.my_security_groups.web_sg_id]
}

module "my_elb" {
  source = "./modules/elb"
  subnets = [module.my_subnets.public_subnet1_id, module.my_subnets.public_subnet2_id]
  security_groups = [module.my_security_groups.web_sg_id]
  vpc_id = module.my_vpc.vpc_id
}

module "my_asg" {
  source = "./modules/asg"
  desired_capacity        = 2
  max_size                = 4
  min_size                = 2
  subnets                 = [module.my_subnets.private_subnet1_id, module.my_subnets.private_subnet2_id]
  launch_template_id      = module.my_launch_template.launch_template_id
  launch_template_version = "$Latest"
}

module "my_route53" {
  source        = "./modules/route53"
  domain_name   = var.domain_name
  record_name   = "www.${var.domain_name}"
  elb_dns_name  = module.my_elb.elb_dns_name
  elb_zone_id   = module.my_elb.elb_zone_id
}

module "my_elb_listener" {
  source            = "./modules/elb-listener"
  load_balancer_arn = module.my_elb.elb_arn
  target_group_arn  = module.my_elb.target_group_arn
  certificate_arn   = var.certificate_arn
}
