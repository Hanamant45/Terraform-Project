resource "aws_s3_bucket" "bucket" {
    bucket = "hanamnatmane"
    tags = {
      Name = "HM"
    }
  
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}