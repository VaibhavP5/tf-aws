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

variable "aws_username" {
    description = "AWS Username"
    type       = string
}

resource "random_integer" "bucket_version" {
    min = 1
    max = 10
}

resource "aws_s3_bucket" "my-bucket" {
    bucket = "${var.aws_username}-v${random_integer.bucket_version.result}"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}