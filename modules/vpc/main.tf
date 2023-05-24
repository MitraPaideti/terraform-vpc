variable "region" {
  description = "AWS region"
}

variable "cidr_block" {
  description = "VPC CIDR block"
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnet_id" {
  value = aws_subnet.my_subnet.id
}

output "security_group_name" {
  value = aws_security_group.my_security_group.name
}

output "region" {
  value = var.region
}

output "cidr_block" {
  value = var.cidr_block
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip
  tags = {
    Name = var.subnet_name
  }
}

resource "aws_security_group" "my_security_group" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
