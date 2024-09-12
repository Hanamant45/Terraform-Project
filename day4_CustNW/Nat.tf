# Create Nat Gate way and RT
resource "aws_eip" "eip" {
  
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id = aws_subnet.cust.id
  tags = {
    Name= "cust-nat"
  } 
}
resource "aws_route_table" "cust-nat" {
    vpc_id = aws_vpc.cust.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.nat.id
    }
  
}
# Subnet association
resource "aws_route_table_association" "cust-nat" {
    subnet_id = aws_subnet.cust2.id
    route_table_id = aws_route_table.cust-nat.id
}