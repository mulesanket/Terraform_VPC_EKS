variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets for EKS worker nodes"
}

variable "instance_type" {
  default     = "t3.medium"
  type        = string
}