variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "VPC name"
  default     = "My-VPC-Mitra"
}

variable "subnet_cidr_block" {
  description = "Subnet CIDR block"
  default     = "10.0.0.0/24"
}

variable "availability_zone" {
  description = "Availability Zone"
  default     = "us-west-2a"
}

variable "map_public_ip" {
  description = "Map public IP on launch"
  default     = true
}

variable "subnet_name" {
  description = "Subnet name"
  default     = "MySubnet-mitra"
}

variable "route_table_name" {
  description = "Route table name"
  default     = "MyRouteTable-mitra"
}

variable "internet_gateway_name" {
  description = "Internet gateway name"
  default     = "MyInternetGateway-mitra"
}

variable "security_group_name" {
  description = "Security group name"
  default     = "MySecurityGroup-mitra"
}

variable "security_group_description" {
  description = "Security group description"
  default     = "Allow HTTP inbound traffic"
}
