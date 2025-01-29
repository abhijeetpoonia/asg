launch_template_name = "dev-app-template"
description         = "Launch template for development environment"
image_id            = "ami-0f58b397bc5c1f2e8"  
instance_type       = "t2.micro"
key_name            = "aes"            
security_group_ids  = ["sg-0db9e6c20711ab0bd"] 

asg_name           = "test-asg"
min_size           = 1
max_size           = 4
desired_capacity   = 2
subnet_ids         = ["subnet-0ff7ef2b7250432d7", "subnet-004c314f965ff4a14"]  
health_check_type  = "EC2"

tags = {
  Environment = "dev"
  Project     = "dev-project"
  Managed_by  = "terraform"
