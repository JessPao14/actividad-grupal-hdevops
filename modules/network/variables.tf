variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone to deploy subnet"
  type        = string
  default     = "us-east-1a"
}

variable "apollo_sg_name" {
  description = "Name for the Apollo security group"
  type        = string
  default     = "apollo-sg"
}