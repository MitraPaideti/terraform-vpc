# main.tf
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
}

# Create a VPC
resource "create_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "my-vpc"
  }
}

# Create a subnet
resource "aws_subnet" "my_subnets" {
  count           = length(var.subnet_cidr_blocks)
  cidr_block      = var.subnet_cidr_blocks[count.index]
  vpc_id          = aws_vpc.my_vpc.id
}

# Create an internet gateway
#resource "aws_internet_gateway" "my_igw" {
 # vpc_id = aws_vpc.my_vpc.id
 # tags = {
 #   Name = "my-igw"
#  }
#}
output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.my_subnets[*].id
}
