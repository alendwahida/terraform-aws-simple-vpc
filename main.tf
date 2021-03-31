provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "terraform-vpc-test"
  cidr = "10.0.0.0/16"
  
  azs = ["us-east-1a"]
  public_subnets = ["10.0.101.0/24"]
  
  tags = {
    Env = "Test"
  }
}
