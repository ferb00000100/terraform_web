
module "infrastructure_provider" {
  source                = "../modules/infrastructure_aws_defaults"
  aws_access_key        = ""
  aws_secret_access_key = ""
  region                = var.region

}

module "infrastructure_networking" {
  source            = "../modules/infrastructure_networking"
  cidr_block_vpc    = var.cidr_block_vpc
  subnet_block_1    = var.subnet_block_1
  availability_zone = var.availability_zone
  namespace         = var.namespace
  owner             = var.owner
  email             = var.email
  environment       = ""
}
