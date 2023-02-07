module "ssh-module" {
  source    = "../ssh"
  algorithm = "RSA"
  rsa_bits  = "4096"
  key_name  = "omar-ssh-ec2-2-pem"
}