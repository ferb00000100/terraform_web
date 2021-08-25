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
  //  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "The absolute path on disk to the SSH private key."
  //  default     = "~/.ssh/id_rsa"
}

variable "ami" {
  description = "AWS Image"
}

variable "region" {
  default = ""
  description = "select region"
}

variable "instance_type" {
  description = "AWS Instance type"
}

variable "availability_zone" {
  description = "az us-east-2c, us-east-1c"
}

variable "cidr_block" {
  description = "subnet block"
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

variable "aws_subnet_id" {
  description = "Subnet ID"
}

variable "vpc_id" {
  description = "vpc ID"
}

variable "ingress_port_mgmt" {}

variable "ingress_port_service" {}