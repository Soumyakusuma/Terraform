

resource "aws_instance" "roboshop" {
  count=4
  for each =toset(var.instances)
  ami = var.ami-id
  instance_type = each.value
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  
  tags = {
    Name=each.key
  }
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_allow
  description = var.describe

   ingress {
    from_port        = var.from_port
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
}
