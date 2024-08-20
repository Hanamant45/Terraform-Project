variable "ami" {
  description = "ami ec2 instance"
  type = string
  default = "ami-01fb4de0e9f8f22a7"

}

variable "type" {
    description = "instance type"
    type = string
    default = "t2.micro"
  
}
variable "key" {
    description = "key pair"
    type = string
    default = "key"
  
}