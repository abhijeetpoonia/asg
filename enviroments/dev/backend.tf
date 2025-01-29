terraform {
  backend "s3" {
    bucket = "asgbucket121"
    key    = "asg/dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
