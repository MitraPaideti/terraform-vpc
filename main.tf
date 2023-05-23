module "vpc" {
  source = "./modules/vpc"  # Path to the directory containing the module

 /* vpc_name           = "my-vpc-mitra"
  vpc_cidr_block     = "10.0.0.0/16"
  subnet_cidr_block = "10.0.0.0/24"
  availability_zone = "us-west-2a"
  
  vpc_name           =  var.vpc_name
  vpc_cidr_block      = var.vpc_cidr_block
  subnet_cidr_block  = var.subnet_cidr_block
  availability_zone = var.availability_zone*/
  
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

}
}