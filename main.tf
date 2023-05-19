# main.tf
provider "aws" {
  region = "us-west-2"
}

module "my_vpc" {
  source              = "./my-vpc-module"
  vpc_cidr_block      = "10.0.0.0/16"
  subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

output "vpc_id" {
  value = module.my_vpc.vpc_id
}

output "subnet_ids" {
  value = module.my_vpc.subnet_ids
}
