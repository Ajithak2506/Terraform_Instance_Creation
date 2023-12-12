
# Create a security group
resource "aws_security_group" "My_security_group" {
  name        = "My-security-group"
  description = "My Security Group"
  vpc_id      = aws_vpc.My_vpc.id

  ingress {
    from_port   = 1
    to_port     = 65525
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 1
    to_port = 65525
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}