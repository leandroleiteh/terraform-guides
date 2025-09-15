variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "aws_profile" {
  type        = string
  default     = "terraformDEVGIU"
  description = "Name of Profile in AWS credentials file (tirei o valor default para forçar a entrada do usuário. valor: terraformDEVGIU)"
}
