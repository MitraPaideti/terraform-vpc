output "vpc_id" {
  value = aws_vpc.vpc_id
}

output "subnet_id" {
  value = aws_subnet.subnet_id
}

output "security_group_id" {
  value = aws_security_group.security_group_id
  }

  output "subnet_cidr_block" {
  value = aws_subnet_cidr_block.subnet_cidr_block
  }
