output "elb_arn" {
  value = aws_lb.wordpress_elb.arn
}

output "elb_dns_name" {
  value = aws_lb.wordpress_elb.dns_name
}

output "elb_zone_id" {
  value = aws_lb.wordpress_elb.zone_id
}

output "target_group_arn" {
  value = aws_lb_target_group.wordpress_tg.arn
}
