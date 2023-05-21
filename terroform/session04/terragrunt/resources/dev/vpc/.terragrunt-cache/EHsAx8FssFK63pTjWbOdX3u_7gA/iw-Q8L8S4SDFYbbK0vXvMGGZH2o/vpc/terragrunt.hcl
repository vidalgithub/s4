terraform {
  source = "../../../modules//vpc/"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

inputs = {
  vpc_cidr_block = "10.0.0.0/16"
  aws_region     = "us-east-1"
  cluster_name   = "2526-dev-alpha"
  subnets_cidr_block = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24"
  ]

  availability_zone = [
    "us-east-1a",
    "us-east-1b",
  ]
  
  common_tags = {
    "AssetID"       = "2560"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "dev"
    "Project"       = "alpha"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}
