vpc_name             = "demo-application-vpc"
vpc_cidr             = "10.10.0.0/16"
availability_zones   = ["ap-south-1a", "ap-south-1b"]
public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24"]
private_subnet_cidrs = ["10.10.101.0/24", "10.10.102.0/24"]
cluster_name         = "demo-application-eks"
instance_type        = "t3.medium"
