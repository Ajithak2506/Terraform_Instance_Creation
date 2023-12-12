provider "aws" {
  region = "ap-south-1" # Set your desired AWS region
}

# Create an EC2 instance
resource "aws_instance" "My_instance" {
  ami                    = "ami-0287a05f0ef0e9d9a"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.mykey.key_name
  subnet_id              = aws_subnet.My_subnet.id
  vpc_security_group_ids = [aws_security_group.My_security_group.id]

  tags = {
    Name = "App Server"
  }
}