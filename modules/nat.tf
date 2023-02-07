module "natgateway-module" {
  source        = "../natgateway"
  eip-id        = module.eip-module.eip-id
  public-subnet = module.subnets.public-subnet-1-id
}