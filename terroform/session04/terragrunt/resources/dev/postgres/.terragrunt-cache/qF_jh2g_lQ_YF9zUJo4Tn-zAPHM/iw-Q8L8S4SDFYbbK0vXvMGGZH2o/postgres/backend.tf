# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "2560-dev-alpha-s4-tf-state"
    dynamodb_table = "2560-dev-alpha-s4-tf-state"
    encrypt        = true
    key            = "postgres/terraform.tfstate"
    region         = "us-east-1"
  }
}