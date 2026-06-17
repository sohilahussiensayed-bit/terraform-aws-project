resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "private-subnet-1"
  }
}
resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "private-subnet-2"
  }
}
resource "aws_route_table_association" "Private-1" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private.id
}