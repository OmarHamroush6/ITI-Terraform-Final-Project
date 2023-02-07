module "vpc-module" {
  source    = "../vpc"
  cider-vpc = "10.0.0.0/16"
  vpc-name  = "VPC Dev"
}