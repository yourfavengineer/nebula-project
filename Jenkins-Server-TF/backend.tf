terraform {
  backend "s3" {
    bucket         = "nebula-s3bucket"
    region         = "us-east-1"
    key            = "backend.tf/terraform.tfstate"
    dynamodb_table = "nebula.dynamodb"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}