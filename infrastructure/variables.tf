variable "aws_access_key" {
  description = "AWS access key for account"
}

variable "aws_secret_access_key" {
  description = "AWS secret key for account"
}

variable "environment" {
  description = "instance environment"
}

variable "namespace" {
  description = "Service Naming"
}

variable "public_key_path" {
  description = "The absolute path on disk to the SSH public key."
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "The absolute path on disk to the SSH private key."
  default     = "~/.ssh/id_rsa"
}

variable "region" {
  default = ""
  description = "select region"
}

variable "availability_zone" {
  description = "az us-east-2c, us-east-1c"
}

variable "cidr_block_vpc" {
  description = "vpc block"
}

variable "subnet_block_1" {
  description = "subnet 1 block"
}

variable "subnet_block_2" {
  description = "subnet 2 block"
}

variable "owner" {
  description = "Instance Owner"
  default = "jason martin"
}

variable "cidr_block_priv" {
  description = "private access"
}

variable "email" {
  description = "Email address for owner tag"
}

variable "os" {
  description = "os of instance"
}
