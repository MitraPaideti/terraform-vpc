variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  default     = ""
}

variable "vpc_name" {
  description = "VPC name"
  default     = ""
}

variable "subnet_cidr_block" {
  description = "Subnet CIDR block"
  default     = ""
}

variable "region" {
  description = "Availability Zone"
  default     = ""
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
