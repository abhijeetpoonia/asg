variable "launch_template_name" {
  type = string
}

variable "description" {
  type = string
}

variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "security_group_ids" {
  type = list(string)
}

variable "user_data" {
  type    = string
  default = ""
}

variable "asg_name" {
  type = string
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "desired_capacity" {
  type = number
}

variable "subnet_ids" {
  type = list(string)
}

variable "target_group_arns" {
  type    = list(string)
  default = []
}

variable "health_check_type" {
  type    = string
  default = "EC2"
}

variable "tags" {
  type    = map(string)
  default = {}
}
