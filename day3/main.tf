resource "aws_s3_bucket" "name" {
    bucket = "hanamnatmane"
    tags = {
      Name = "HM"
    }
  
}