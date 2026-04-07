resource "aws_instance" "ms-instance" {
ami = "ami-0c94855ba95c71c99"
instance_type = "t3.micro"
key_name = "ms-key"
subnet_id = aws_subnet.publicsubnet1.id
security_groups = [aws_security_group.sg.id]
private_ip = "10.20.1.35"
associate_public_ip_address=true
tags = {
Name = "ms-instance"
}
}