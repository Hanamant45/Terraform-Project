resource "aws_s3_bucket" "test" {
    bucket = "saffronawsdevops"
  
}

resource "aws_instance" "dev" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "mykey"
    tags = {
      Name = "test"
    }
  
}

#command terraform apply -auto-approve --target=aws_instance.dev
#terraform destroy -auto-approve --target=aws_instance.dev