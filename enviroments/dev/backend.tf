terraform {
  backend "s3" {
    bucket = "asgbucket121"
    key    = "asg/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
