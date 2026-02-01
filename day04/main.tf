terraform {
    backend "s3" {
        bucket = "vaibhavp4-tf-state-bucket"
        key = "dev/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
        use_lockfile = "true"
    }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "test_backend" {
    bucket = "test-remote-backend-${random_string.bucket_suffix.result}"
    tags = {
        Name        = "TF Bucket"
        Environment = "Dev"
    }
}

resource "random_string" "bucket_suffix" {
    length  = 8
    special = false
    upper   = false
}