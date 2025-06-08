terraform {
  backend "s3" {
    bucket         = "terraform-s3-backend-bucket-project"
    key            = "demo-application-statefile/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

module "vpc" {
  source               = "../../modules/vpc"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  cluster_name         = var.cluster_name
}

module "eks" {
  source        = "../../modules/eks"
  cluster_name  = var.cluster_name
  subnet_ids    = module.vpc.private_subnet_ids
  instance_type = var.instance_type
}
