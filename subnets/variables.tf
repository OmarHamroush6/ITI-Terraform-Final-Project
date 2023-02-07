variable "cidr-subnets" {
  type = list(string)
}

variable "subnets-type" {
  type = list(string)
}

variable "subnets-region" {
  type = list(string)
}

variable "vpc-az" {
  type = string
}


variable "vpc-id" {
  type = string
}