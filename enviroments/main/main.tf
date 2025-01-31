module "launch_template" {
  source = "../../modules/launch_template"

  launch_template_name = var.launch_template_name
  description         = var.description
  image_id            = var.image_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  security_group_ids  = var.security_group_ids
  user_data          = var.user_data
  tags               = var.tags
}

module "asg" {
  source = "../../modules/asg"

  asg_name                 = var.asg_name
  min_size                = var.min_size
  max_size                = var.max_size
  desired_capacity        = var.desired_capacity
  health_check_type       = var.health_check_type
  launch_template_id      = module.launch_template.launch_template_id
  launch_template_version = var.launch_template_version
  subnet_ids              = var.subnet_ids
  target_group_arns       = var.target_group_arns
  tags                    = var.tags
}
