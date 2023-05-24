module "my_module" {
  source = "./modules/vpc"
  region = var.region
  cidr_block = var.vpc_cidr_block
}
 