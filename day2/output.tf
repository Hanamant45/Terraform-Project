output "public_ip" {
    value = aws_instance.dev.public_ip
    description = "printing public ip"
  
}