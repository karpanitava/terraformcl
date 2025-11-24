terraform {
  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
  # credentials can be picked up automatically from environment variables, AWS CLI, or shared config
}

