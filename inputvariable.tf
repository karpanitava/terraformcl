# Input variables , Output variable, local vairables,
# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources will be created"
  type        = string
  default     = "eu-north-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key pair name to associate with the instance"
  type        = string
  default     = "cicdclouds"
}