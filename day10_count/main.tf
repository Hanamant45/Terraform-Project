resource "aws_instance" "test" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "mykey"
    count = length(var.test)
    
    tags = {
      Name = var.test[count.index]
    }
}
variable "test" {
  type = list(string)
  default = [ "dev","test","prod" ]
}