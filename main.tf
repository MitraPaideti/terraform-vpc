module "vpc" {
  source = "./modules/vpc"  # Path to the directory containing the module

  vpc_name           = "my-vpc-mitra"
  vpc_cidr_block     = "10.0.0.0/16"
  #subnet_cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
}