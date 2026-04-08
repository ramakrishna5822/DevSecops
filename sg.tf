resource "aws_security_group" "sg"{
    name = "${var.vpc_name}-sg"
    description = "allow all traffic within the VPC"
    vpc_id = aws_vpc.ram.id
    tags = {
        Name = "${var.vpc_name}-sg"
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