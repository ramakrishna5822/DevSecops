resource "aws_security_group" "sg" {
   name = "ms-sg"
   description = "allow all traffic"
   vpc_id = aws_vpc.test.id
   tags = {
    Name = "ms-sg"
   }
    ingress {
     from_port = 0
     to_port = 0
     protocol = "-1"
     cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
     from_port = 0
     to_port = 0
     protocol = "-1"
     cidr_blocks = ["0.0.0.0/0"]
    }
}