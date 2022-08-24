

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"  
    }
  }
# Use S3 bucket called 'capstone-backend' as Terraform Backend
  backend "s3" {
    bucket = "garipallybhargava-capstone-backend"
    key    = "capstone/terraform.tfstate"
    region = "us-east-1"
  }
}

# Setup the AWS Provider Block
provider "aws" {
  region = "us-east-1"
}

