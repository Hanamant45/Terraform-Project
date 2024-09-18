resource "aws_instance" "dev" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "mykey"
    tags = {
      Name = "dev"
    }
  
}

#command terraform import aws_instance.subnet_id