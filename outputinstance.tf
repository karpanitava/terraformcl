# EC@ Instance Public IP
output "instance_publicip" {
  description = "instance public_IP"
  value = aws_instance.terraforminstance.public_ip
  
}

output "instance_publicdnd" {
  description = "instance public_DNS"
  value = aws_instance.terraforminstance.public_dns
  
}