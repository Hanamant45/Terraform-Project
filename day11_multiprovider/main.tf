provider "aws" {
    region = "ap-south-1"
    alias = "mumbai"
  
}
provider "aws" {
    region = "ap-southeast-2"
    alias = "sydeny"
  
}
resource "aws_s3_bucket" "mum" {
    bucket = "dada-sparklet-aws"
    provider = aws.mumbai
  
}
resource "aws_s3_bucket" "sys" {
    bucket = "dada-sparklet-sys-aws"
    provider = aws.sydeny
  
}