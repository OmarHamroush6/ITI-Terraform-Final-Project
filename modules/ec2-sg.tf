module "ec2-sg-module" {
  source            = "../ec2-securitygroup"
  vpc-id            = module.vpc-module.vpc-id
  private-alb-sg-id = module.loadbalancer-module.private-alb-sg-id
  sg-rules = {
    ingress = [
      {
        description = "Allow http inbound traffic"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

      },
      {
        description = "Allow https inbound traffic"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

      },
      {
        description = "Allow ssh inbound traffic"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

      }

    ],
    egress = [
      {
        description = "Allow http outbound traffic"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

      },
      {
        description = "Allow https outbound traffic"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

      },
      {
        description = "Allow ssh outbound traffic"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

      }
    ]
  }
}