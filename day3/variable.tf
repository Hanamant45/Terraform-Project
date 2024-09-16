variable "ami" {
  description = "ami ec2 instance"
  type = string
  default = "ami-0e53db6fd757e38c7"

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