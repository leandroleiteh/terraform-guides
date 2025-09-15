terraform {
  required_version = ">= 1.3.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.12.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-387793809190"
    key     = "dev/terraform.tfstate"
    region  = "eu-west-1"
    profile = "terraformDEVGIU"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "example" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}