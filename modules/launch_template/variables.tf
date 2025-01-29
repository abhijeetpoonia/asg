variable "launch_template_name" {
  type        = string
  description = "Name of the launch template"
}

variable "description" {
  type        = string
  description = "Description of the launch template"
}

variable "image_id" {
  type        = string
  description = "AMI ID to use for the instances"
}

variable "instance_type" {
  type        = string
  description = "Instance type to use for the instances"
}

variable "key_name" {
  type        = string
  description = "Name of the key pair to use for SSH access"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
}

variable "user_data" {
  type        = string
  default     = ""
  description = "User data script for the instances"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to resources"
