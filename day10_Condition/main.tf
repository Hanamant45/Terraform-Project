resource "aws_instance" "test" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = "mykey"
    count = var.instance_type == "t2.micro" ? 1 : 0
    
    tags = {
      Name = "webserver"
    }
}
