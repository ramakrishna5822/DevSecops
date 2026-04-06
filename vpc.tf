resource "aws_vpc" "test" {
    cidr_block = "10.20.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "test-vpc"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.test.id
    tags = {
        Name = "test-igw"
    }
}