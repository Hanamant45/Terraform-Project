variable "ami" {
  description = "ami ec2 instance"
  type = string
  default = "ami-0a4408457f9a03be3"

}

variable "type" {
    description = "instance type"
    type = string
    default = "t2.micro"
  
}
variable "key" {
    description = "key pair"
    type = string
    default = "mykey"
  
}