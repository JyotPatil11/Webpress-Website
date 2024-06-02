

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet1_cidr
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet1"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet2_cidr
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet2"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet1_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "PrivateSubnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet2_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "PrivateSubnet2"
  }
}
