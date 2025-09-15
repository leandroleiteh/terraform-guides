variable "aws_region" {
  type        = string
  description = "Name of AWS region"
}

variable "environment" {
  type        = string
  description = "variable of environment"
}

variable "aws_profile" {
  type        = string
  description = "Name of Profile in AWS credentials file (tirei o valor default para forçar a entrada do usuário. valor: terraformDEVGIU)"
}

variable "instance_type" {
  type        = string
  description = "Type of instance"
}

variable "instance_ami" {
  type        = string
  default     = "ami-097f734cebd08c39e"
  description = "Amazon Linux 2023 AMI"
}

variable "instance_tags" {
  type        = map(string)
  description = "Tags for the instance"

  default = {
    Name    = "default"
    Project = "Terraform curso"
    Owner   = "Leandro Leite"
  }
}