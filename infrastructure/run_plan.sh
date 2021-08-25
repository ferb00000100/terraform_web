#!/usr/bin/env bash
terraform init
terraform plan -var-file=prototype_vpc.tfvars -state=dev-infrastructure.tfstate