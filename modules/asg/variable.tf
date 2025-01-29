variable "asg_name" {
  type        = string
  description = "Name for the Auto Scaling Group"
}

variable "launch_template_id" {
  type        = string
  description = "ID of the launch template to use"
}

variable "launch_template_version" {
  type        = string
  description = "Version of the launch template to use"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the ASG"
}

variable "target_group_arns" {
  type        = list(string)
  default     = []
  description = "List of target group ARNs for the ASG"
}

variable "health_check_type" {
  type        = string
  default     = "EC2"
  description = "EC2 or ELB. Controls how health checking is done"
}

variable "health_check_grace_period" {
  type        = number
  default     = 300
  description = "Time after instance comes into service before checking health"
}

variable "min_size" {
  type        = number
  description = "Minimum number of instances in ASG"
}

variable "max_size" {
  type        = number
  description = "Maximum number of instances in ASG"
}

variable "desired_capacity" {
  type        = number
  description = "Desired number of instances in ASG"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the ASG"
