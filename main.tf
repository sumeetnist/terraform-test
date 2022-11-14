resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true
}

locals {
  cidr_blocks = cidrsubnets("${var.vpc_cidr}", 2, 2, 2)
}

resource "aws_subnet" "mysubnet" {
  count = 3
  vpc_id = aws_vpc.myvpc.id
  cidr_block = local.cidr_blocks[count.index]
  availability_zone = "${element(var.subnet_azs, count.index )}"

}
