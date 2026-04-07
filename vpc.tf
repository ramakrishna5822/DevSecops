resource "aws_vpc" "ram" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_name
    }
  
}