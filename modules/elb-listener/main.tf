

resource "aws_lb_listener" "https" {
  load_balancer_arn = var.load_balancer_arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"

  default_action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }

  certificate_arn = var.certificate_arn
}
