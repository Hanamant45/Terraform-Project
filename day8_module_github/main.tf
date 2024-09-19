module "git" {
    source = "github.com/Hanamant45/Terraform-Project/day2"
    ami = "ami-01fb4de0e9f8f22a7"
    type = "t2.micro"
    key = "key"
  
}