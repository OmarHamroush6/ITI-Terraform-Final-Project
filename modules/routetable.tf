module "routtable-module" {
  source              = "../routetables"
  vpc-id              = module.vpc-module.vpc-id
  igw-id              = module.igw-module.igw-id
  public-subnet-1-id  = module.subnets.public-subnet-1-id
  public-subnet-2-id  = module.subnets.public-subnet-2-id
  private-subnet-1-id = module.subnets.private-subnet-1-id
  private-subnet-2-id = module.subnets.private-subnet-2-id
  natgateway-id       = module.natgateway-module.natgateway-id
} 