output "bestion_public_ip" {
  value = aws_instance.Bastion-Host.public_ip
}

output "app_private_ip" {
  value = aws_instance.App-Server.private_ip
}