output "launch_template_details" {
  description = "Details of the Launch Template"
  value = {
    id             = module.launch_template.launch_template_id
    latest_version = module.launch_template.launch_template_latest_version
    name           = module.launch_template.launch_template_name
  }
}

output "asg_details" {
  description = "Details of the Auto Scaling Group"
  value = {
    id   = module.asg.asg_id
    arn  = module.asg.asg_arn
    name = module.asg.asg_name
  }
