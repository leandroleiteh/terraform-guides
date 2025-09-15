variable "environment" {
  type        = string
  description = "The environment for the deployment (e.g., dev, staging, prod)"
}

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources in"
}

variable "aws_profile" {
  type        = string
  description = "The AWS CLI profile to use for authentication"
}