# ---- networking/main/tf ----

resource "random_integer" "random" {
  min = 1
  max = 5
}

resource "aws_vpc" "vnet_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "vnet_vpc_${random_integer.random.id}"
  }
}

resource "aws_subnet" "vnet_public_subnets" {
  count = length(var.public_cidrs)
  vpc_id = aws_vpc.vnet_vpc.id
  cidr_block = var.public_cidrs[count.index]
  map_public_ip_on_launch = true
  availability_zone = ["us-east-1a","us-east-1b","us-east-1c","us-east-1e"][count.index]
  tags = {
    Name = "vnet_public_${count.index + 1}"
  }

}