
variable "namespace" {
  description = "Service Naming"
}

variable "availability_zone" {
  description = "The VPC ID"
}

variable "cidr_block_vpc" {
  description = "vpc block"
}

variable "subnet_block_1" {
  description = "subnet 1 block"
}

variable "owner" {
  description = "Instance Owner"
}
variable "email" {
  description = "email of owner for tags"
}

variable "environment" {
  description = "environment"
}
