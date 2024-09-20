terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.20.0"   #to lock the version
    }
  }
}
provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "mum" {
    bucket = "dada-sparklet-aws"
  
}
