terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
  profile = "terraformDEVGIU"
}

resource "aws_s3_bucket" "first-bucket" {
  bucket = "my-tf-test-bucket-12343567890"

  tags = {
    Name        = "My bucket Teste"
    Environment = "Dev"
    managed-by  = "Terraform"
  }
}