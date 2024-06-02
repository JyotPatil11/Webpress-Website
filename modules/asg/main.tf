

resource "aws_autoscaling_group" "Auto-SG" {
  desired_capacity         = var.desired_capacity
  max_size                 = var.max_size
  min_size                 = var.min_size
  vpc_zone_identifier      = var.subnets
  health_check_type        = "EC2"
  health_check_grace_period = 300
  wait_for_capacity_timeout = "10m"

  launch_template {
    id      = var.launch_template_id
    version = var.launch_template_version
  }

  tag {
    key                 = "Name"
    value               = "wordpress-instance"
    propagate_at_launch = true
  }
}
