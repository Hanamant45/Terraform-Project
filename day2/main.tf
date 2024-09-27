resource "aws_instance" "dev" {
    ami = var.ami
    instance_type = var.type
    key_name = var.key
    tags = {
      name = "test2"
    }
}

