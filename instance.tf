resource "aws_instance" "server" {
    count=2
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.sg.id]
    subnet_id = element(aws_subnet.public.*.id, count.index)
    private_ip = element(var.private_ip, count.index)
    associate_public_ip_address = true
    tags = {
        Name = "${var.vpc_name}-server-${count.index + 1}"
    }
}