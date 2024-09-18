data "aws_subnet" "public" {
    filter {
      name = "tag:Name"
      values = [ "pub-1" ]
    }
  
}

data "aws_ami" "ami" {
    most_recent = true
    owners = [ "amazon" ]
    filter {
        name = "name"
        values = [ "amzn2-ami-hvm-*-gp2" ]
      
    }
    filter {
      name = "virtualization-type"
      values = [ "hvm" ]
    }
    filter {
      name = "root-device-type"
      values = [ "ebs" ]
    }
    filter {
      name = "architecture"
      values = [ "x86_64" ]
    }
  
}
resource "aws_instance" "devlop" {
    ami = data.aws_ami.ami.id
    instance_type = "t2.micro"
    key_name = "mykey"
    subnet_id = data.aws_subnet.public.id
    tags = {
      Name= "devara"
    } 
}
