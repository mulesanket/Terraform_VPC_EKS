variable "vpc_name" {}

variable "vpc_cidr" {}

variable "availability_zones" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "cluster_name" {}

variable "instance_type" {
  default = "t3.medium"
}
