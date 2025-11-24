resource "aws_instance" "terraforminstance" {
  ami           = data.aws_ami.amazon-linux2.id
  instance_type = var.instance_type

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF

  key_name = var.instance_keypair

  vpc_security_group_ids = [
    aws_security_group.allow_vpc_22_ssh.id,
    aws_security_group.allow_vpc_web.id
  ]

  tags = {
    Name = "Ec2terraform"
  }
}