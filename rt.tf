resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.test.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        Name = "test-rt"
    }
  
}

resource "aws_route_table_association" "p1" {
    subnet_id = aws_subnet.publicsubnet1.id
    route_table_id = aws_route_table.rt.id
  
}

resource "aws_route_table_association" "p2" {
    subnet_id = aws_subnet.publicsubnet2.id
    route_table_id = aws_route_table.rt.id
  
}

resource "aws_route_table_association" "p3" {
    subnet_id = aws_subnet.publicsubnet3.id
    route_table_id = aws_route_table.rt.id
  
}
