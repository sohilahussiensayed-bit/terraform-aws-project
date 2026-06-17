resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = "public-subnet-1"
  }
}
resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public-subnet-2"
  }
}
resource "aws_route_table_association" "public-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public.id
}