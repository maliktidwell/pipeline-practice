terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "pipeline-bucket-4me"
    key    = "cicd-pipeline/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}
