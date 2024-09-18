resource "aws_s3_bucket" "test" {
    bucket = "saffronawsdevops"
    depends_on = [ aws_instance.dependant ]
  
}

resource "aws_instance" "dependant" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "mykey"
    tags = {
      Name = "webserver"
    }
  
}