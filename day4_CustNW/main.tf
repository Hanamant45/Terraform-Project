#create VPC
resource "aws_vpc" "cust" {
    cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev"
  }
}

#Create Internet gatway and attach to VPC
resource "aws_internet_gateway" "cust" {
    vpc_id = aws_vpc.cust.id

    tags = {
      Name = "cust_IG"
    }
  
}
# Create Subnet 

resource "aws_subnet" "cust" {
    vpc_id = aws_vpc.cust.id
    availability_zone = "ap-southeast-2b"
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "cust_Subnet"
    }
      
}
resource "aws_subnet" "cust2" {
    vpc_id = aws_vpc.cust.id
    availability_zone = "ap-southeast-2b"
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "cust_Subnet_2"
    }
      
}

#Create Route table and Edit Route
resource "aws_route_table" "cust" {
    vpc_id = aws_vpc.cust.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.cust.id
    }
  
}
# Subnet association
resource "aws_route_table_association" "cust" {
    subnet_id = aws_subnet.cust.id
    route_table_id = aws_route_table.cust.id 
}

# Create Security Group 
resource "aws_security_group" "custsg" {
    name = "custsg"
    vpc_id = aws_vpc.cust.id
    tags = {
      Name = "customeSG"
    }
ingress {
    description = "allow SSH"
    from_port = 80
    to_port   = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"] 
}
ingress {
    description = "allow to all"
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
}
egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
}
# Launch instance

resource "aws_instance" "Prod" {
    ami = var.ami
    instance_type = var.type
    key_name = var.key
    subnet_id = aws_subnet.cust.id
    vpc_security_group_ids = [aws_security_group.custsg.id]

    tags = {
      Name = "test"
    }
  
}

