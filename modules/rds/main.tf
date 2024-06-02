

resource "aws_db_subnet_group" "my_db_subnet_group" {
  name       = "mydbsubnetgroup"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "MyDBSubnetGroup"
  }
}

resource "aws_db_instance" "wordpress_db" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name
  vpc_security_group_ids = var.vpc_security_group_ids
  multi_az               = var.multi_az

  tags = {
    Name = "WordpressDB"
  }
}
