resource "aws_security_group" "infrastructure_sg" {
  name        = var.environment
  description = var.environment
  vpc_id      = var.vpc_id

  ingress {
    from_port = var.ingress_port_mgmt
    to_port = var.ingress_port_mgmt
    protocol = "tcp"
    cidr_blocks = [var.cidr_block_priv]
  }

  ingress {
    from_port = var.ingress_port_service
    to_port = var.ingress_port_service
    protocol = "tcp"
    cidr_blocks = [var.cidr_block_priv]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    name = var.namespace
    environment = var.environment
    RegTechnicalOwner = var.email

  }
}
