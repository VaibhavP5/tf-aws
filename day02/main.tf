terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
    ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
    instance_type = "t2.micro"   
    key_name      = "EC2 Tutorial" 
    tags = {
        Name = "terraform-ec2"
        Environment = "Dev"
    }     
}