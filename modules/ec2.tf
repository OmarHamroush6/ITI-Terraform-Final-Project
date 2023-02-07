module "ec2-module" {
  source               = "../ec2"
  vpc-id               = module.vpc-module.vpc-id
  public-subnets       = [module.subnets.public-subnet-1-id, module.subnets.public-subnet-2-id]
  ami                  = "ami-00874d747dde814fa"
  instance-type        = "t2.micro"
  public-tg-arn        = module.loadbalancer-module.public-tg-arn
  public-ec2-instances = ["Public-1-EC2", "Public-2-EC2"]
  key_name             = module.ssh-module.private-ssh-key_name
  public-ec2-sg-id     = module.ec2-sg-module.public-ec2-sg-id

  private-subnets       = [module.subnets.private-subnet-1-id, module.subnets.private-subnet-2-id]
  private-tg-arn        = module.loadbalancer-module.private-tg-arn
  private-ec2-instances = ["Private-1-EC2", "Private-2-EC2"]
  private-ec2-sg-id     = module.ec2-sg-module.private-ec2-sg-id

  private-load-balancer-dns = module.loadbalancer-module.private-lb-dns
}