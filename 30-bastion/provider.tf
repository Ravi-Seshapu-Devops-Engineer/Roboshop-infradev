terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.45.0" #terraform aws provider version
    }
  }
  backend "s3" {
    bucket = "remote-state-seshapu-dev"
    key = "roboshop-dev-bastion"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
    
  }
}

provider "aws" {
  region = "us-east-1"
}