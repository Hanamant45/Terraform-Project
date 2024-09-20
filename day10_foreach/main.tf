resource "aws_instance" "test" {
    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    key_name = "mykey"
    for_each = toset(var.test)
    
    tags = {
      Name = each.value
    }
}
variable "test" {
  type = list(string)
  default = [ "dev","prod" ]
}