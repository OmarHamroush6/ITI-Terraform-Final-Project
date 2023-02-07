module "subnets" {
  source         = "../subnets"
  vpc-az         = "us-east-1a"
  cidr-subnets   = ["10.0.0.0/24", "10.0.2.0/24", "10.0.1.0/24", "10.0.3.0/24"]
  subnets-type   = ["public", "public", "private", "private"]
  subnets-region = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
  vpc-id         = module.vpc-module.vpc-id
} 