terraform {
  required_version = "~> 1.14.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-tf-backend-rd"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
