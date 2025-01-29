resource "aws_launch_template" "this" {
  name        = var.launch_template_name
  description = var.description

  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interfaces {
    associate_public_ip_address = true
    security_groups            = var.security_group_ids
  }

  user_data = base64encode(var.user_data)

  monitoring {
    enabled = true
  }

  # Instance tags
  tag_specifications {
    resource_type = "instance"
    tags = merge(
      var.tags,
      {
        Name = "${var.launch_template_name}-instance"
      }
    )
  }

  # Volume tags
  tag_specifications {
    resource_type = "volume"
    tags = merge(
      var.tags,
      {
        Name = "${var.launch_template_name}-volume"
      }
    )
  }

  tags = merge(
    var.tags,
    {
      Name = var.launch_template_name
    }
  )
