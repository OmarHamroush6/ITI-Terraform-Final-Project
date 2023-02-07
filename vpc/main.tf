resource "aws_vpc" "vpc-dev" {
  cidr_block = var.cider-vpc
  tags = {
    Name = var.vpc-name
  }
} 