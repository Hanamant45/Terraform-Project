variable "ami" {
  description = "ami ec2 instance"
  type = string
  default = ""

}

variable "type" {
    description = "instance type"
    type = string
    default = ""
  
}
variable "key" {
    description = "key pair"
    type = string
    default = ""
  
}