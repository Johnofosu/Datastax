terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

resource "aws_account_region" "region" {
  region_name = "eu-west-1"
  enabled     = true
}

resource "aws_s3_bucket" "datastax" {
  bucket = "datastax"

  tags = {
    Name        = "datastax_bucket"
    Environment = "Dev"
  }
}