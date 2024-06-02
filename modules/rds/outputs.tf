output "db_instance_endpoint" {
  value = aws_db_instance.wordpress_db.endpoint
}

output "db_instance_id" {
  value = aws_db_instance.wordpress_db.id
}