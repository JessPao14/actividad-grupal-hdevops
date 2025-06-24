provider "aws" {
  region = "us-east-1"
}

module "network" {
  source            = "./modules/network"
  vpc_cidr          = "10.0.0.0/16"
  subnet_cidr       = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  apollo_sg_name     = "apollo-sg"
}

module "apollo_server" {
  source            = "./modules/apollo_server"
  ami_id            = var.ami_id
  key_name          = var.key_name
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.apollo_sg_id
}

module "elastic_stack" {
  source            = "./modules/elastic_stack"
  ami_id            = var.ami_id
  key_name          = var.key_name
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.apollo_sg_id
}

module "apm_server" {
  source            = "./modules/apm_server"
  ami_id            = var.ami_id
  key_name          = var.key_name
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.apollo_sg_id
}
