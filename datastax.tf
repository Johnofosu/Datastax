terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

provider "aws" {
  region = "us-west-2" 
}


resource "aws_s3_bucket" "datastax_yaw9" {
  bucket = "datastax9"

  tags = {
    Name        = "datastax_bucket"
    Environment = "Dev"
  }
}