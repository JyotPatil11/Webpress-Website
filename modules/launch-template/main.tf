

resource "aws_launch_template" "wordpress_lt" {
  name          = "wordpress-lt"
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name

  security_group_names = var.security_group_names

  block_device_mappings {
    device_name = var.device_name

    ebs {
      volume_size           = var.volume_size
      volume_type           = var.volume_type
      delete_on_termination = var.delete_on_termination
    }
  }

  network_interfaces {
    associate_public_ip_address = var.associate_public_ip_address
  }

  tag_specifications {
    resource_type = "instance"
    tags = var.instance_tags
  }
}
