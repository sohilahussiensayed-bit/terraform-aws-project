data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]
   filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
resource "aws_instance" "Bastion-Host" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [
    aws_security_group.sg.id
  ]
  associate_public_ip_address = true
  tags = {
    Name = "Bastion-Host"
  }
  
}
resource "aws_instance" "App-Server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private-subnet-1.id
  tags = {
    Name = "App-Server"
  }
}