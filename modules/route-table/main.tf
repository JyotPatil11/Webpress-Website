

resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.gateway_id
}

resource "aws_route_table_association" "public_subnet1_association" {
  subnet_id      = var.public_subnet1_id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_subnet2_association" {
  subnet_id      = var.public_subnet2_id
  route_table_id = aws_route_table.public_route_table.id
}
