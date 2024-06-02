output "zone_id" {
  value = aws_route53_zone.main.zone_id
}

output "record_name" {
  value = aws_route53_record.www.name
}