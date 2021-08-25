

resource "aws_vpc" "dev-vpc" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = "default"

  tags = {
    Name  = var.namespace
    Owner = var.email
    Environment = var.environment
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.subnet_block_1
  availability_zone = var.availability_zone

  tags = {
    Name  = var.namespace
    Owner = var.email
    Environment = var.environment
  }
}

