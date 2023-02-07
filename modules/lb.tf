module "loadbalancer-module" {
  source             = "../loadbalancer"
  vpc-id             = module.vpc-module.vpc-id
  lb-name            = "Application LB"
  public-subnets     = [module.subnets.public-subnet-1-id, module.subnets.public-subnet-2-id]
  private-subnets    = [module.subnets.private-subnet-1-id, module.subnets.private-subnet-2-id]
  load_balancer_type = "application"
  sg-description     = "Application Load Balancer Allowing HTTP Connections"
  public-ec2-sg-id   = module.ec2-sg-module.public-ec2-sg-id
}