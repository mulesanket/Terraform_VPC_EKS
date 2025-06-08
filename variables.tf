variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "vpc_name" {
  type        = string
  description = "VPC name tag"
}

variable "availability_zones" {
  type        = list(string)
  description = "AZs to use"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDRs"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDRs"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}
