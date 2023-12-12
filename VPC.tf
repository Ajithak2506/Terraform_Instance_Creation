# Create a VPC
resource "aws_vpc" "My_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet within the VPC
resource "aws_subnet" "My_subnet" {
  vpc_id     = aws_vpc.My_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
}

# Create an internet gateway and attach it to the VPC
resource "aws_internet_gateway" "My_igw" {
  vpc_id = aws_vpc.My_vpc.id
}

# Create a route table and associate it with the subnet
resource "aws_route_table" "My_route_table" {
  vpc_id = aws_vpc.My_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.My_igw.id
  }
}

# Associate the route table with the subnet
resource "aws_route_table_association" "My_subnet_association" {
  subnet_id      = aws_subnet.My_subnet.id
  route_table_id = aws_route_table.My_route_table.id
}