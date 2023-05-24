output "vpc_id" {
  value = module.my_module.vpc_id
}

output "subnet_id" {
  value = module.my_module.subnet_id
}

output "security_group_name" {
  value = module.my_module.security_group_name
}

output "region" {
  value = module.my_module.region
}

output "cidr_block" {
  value = module.my_module.cidr_block
}