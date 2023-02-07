module "igw-module" {
  source        = "../igw"
  vpc-id        = module.vpc-module.vpc-id
  igw-desc-name = "VPC-IGW"
}