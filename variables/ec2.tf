

resource "aws_instance" "roboshop" {
  ami           = var.ami_id
  instance_type = "var.instance"
  vpc_security_group_ids = [ aws_security_group.allow_all_ips.id ]
  
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all_ips" {
  name        = var.sg_allow
  description = var.sg.describe

   ingress {
    from_port        =var.from
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

   egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg-tags
