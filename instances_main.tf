
module "infrastructure_provider" {
  source                = "modules/infrastructure_aws_defaults"
  aws_access_key        = ""
  aws_secret_access_key = ""
  region                = var.region
}

module "infrastructure_instance" {
  source                = "modules/infrastructure_instances"
  template              = file("${path.module}/templates/instance_config.sh.tpl")
  environment           = var.environment
  namespace             = var.namespace
  public_key_path       = file(var.public_key_path)
  private_key_path      = file(var.private_key_path)
  ami                   = var.ami
  instance_type         = var.instance_type
  aws_subnet_id         = var.aws_subnet_id
  aws_security_group_id = module.infrastructure_security_groups.infrastructure_security_group_id
  email                 = var.email
  os                    = var.os
  aws_access_key        = var.aws_access_key
  aws_secret_access_key = var.aws_secret_access_key
}

module "infrastructure_security_groups" {
  source                = "modules/infrastructure_security"
  vpc_id                = var.vpc_id
  environment           = var.environment
  cidr_block_priv       = var.cidr_block_priv
  owner                 = var.owner
  aws_security_group_id = ""
  email                 = var.email
  namespace             = var.namespace
  ingress_port_mgmt     = var.ingress_port_mgmt
  ingress_port_service  = var.ingress_port_service
}