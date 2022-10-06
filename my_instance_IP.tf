provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "main" {
  ami                    = "ami-0ee23bfc74a881de5"
  instance_type          = "t2.micro"
  key_name               = "sshbash"
  vpc_security_group_ids = ["sg-07408679d5e07f134"]
  tags = {
    Name = "Terraform"
  }
}



output "PublicIP" {
  value = aws_instance.main.public_ip
}

output "PrivateIP" {
  value = aws_instance.main.private_ip
}

