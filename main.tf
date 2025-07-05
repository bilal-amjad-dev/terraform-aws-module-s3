terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.74.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source = "./module/s3"
  bucket_name = var.test_bucket_name # Corrected: Referencing the new root variable name
}