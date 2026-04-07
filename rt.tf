resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.ram.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
      Name = "${var.vpc_name}-rt"
    }
}

resource "aws_route_table_association" "association" {
    count = 3
  subnet_id = element(aws_subnet.subnets.*.id, count.index)
  route_table_id = aws_route_table.rt.id
}