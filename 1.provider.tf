terraform {
  required_version = "1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
  backend "s3" {
    bucket = "devsceops40one"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
# Provider Configuration
provider "aws" {
  # Configuration options
}